import 'dart:async';
import 'dart:io';

abstract class NetworkInfo {
  /// Get the value if connected to the internet
  Future<bool> get isConnected;

  /// Emits the changes in the internet connection
  Stream<bool> get onChange;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({
    this.checkTimeout = defaultTimeout,
    this.checkInterval = defaultInterval,
    List<AddressCheckOptions>? addresses,
  }) {
    this.addresses = addresses ??
        defaultAddresses
            .map(
              (AddressCheckOptions e) => AddressCheckOptions(
                address: e.address,
                hostname: e.hostname,
                port: e.port,
                timeout: checkTimeout,
              ),
            )
            .toList();

    _statusController
      ..onListen = _maybeEmitStatusUpdate

      // stop sending status updates when no one is listening
      ..onCancel = () {
        _timerHandle?.cancel();
        _lastStatus = null; // reset last status
      };
  }

  /// More info on why default port is 53
  /// here:
  /// - https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
  /// - https://www.google.com/search?q=dns+server+port
  static const int defaultPort = 53;

  /// Default timeout is 10 seconds.
  ///
  /// Timeout is the number of seconds before a request is dropped
  /// and an address is considered unreachable
  static const Duration defaultTimeout = Duration(seconds: 10);

  /// Default interval is 10 seconds
  ///
  /// Interval is the time between automatic checks
  static const Duration defaultInterval = Duration(seconds: 10);

  /// Predefined reliable addresses. This is opinionated
  /// but should be enough. See https://www.dnsperf.com/#!dns-resolvers
  ///
  /// Addresses info:
  ///
  /// <!-- kinda hackish ^_^ -->
  /// <style>
  /// table {
  ///   width: 100%;
  ///   border-collapse: collapse;
  /// }
  /// th, td { padding: 5px; border: 1px solid lightgrey; }
  /// thead { border-bottom: 2px solid lightgrey; }
  /// </style>
  ///
  /// | Address        | Provider   | Info                                            |
  /// |:---------------|:-----------|:------------------------------------------------|
  /// | 1.1.1.1        | CloudFlare | https://1.1.1.1                                 |
  /// | 1.0.0.1        | CloudFlare | https://1.1.1.1                                 |
  /// | 8.8.8.8        | Google     | https://developers.google.com/speed/public-dns/ |
  /// | 8.8.4.4        | Google     | https://developers.google.com/speed/public-dns/ |
  /// | 208.67.222.222 | OpenDNS    | https://use.opendns.com/                        |
  /// | 208.67.220.220 | OpenDNS    | https://use.opendns.com/                        |
  static final List<AddressCheckOptions> defaultAddresses =
      List<AddressCheckOptions>.unmodifiable(
    <AddressCheckOptions>[
      AddressCheckOptions(
        address: InternetAddress(
          '1.1.1.1', // CloudFlare
          type: InternetAddressType.IPv4,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2606:4700:4700::1111', // CloudFlare
          type: InternetAddressType.IPv6,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '8.8.4.4', // Google
          type: InternetAddressType.IPv4,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2001:4860:4860::8888', // Google
          type: InternetAddressType.IPv6,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '208.67.222.222', // OpenDNS
          type: InternetAddressType.IPv4,
        ), // OpenDNS
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2620:0:ccc::2', // OpenDNS
          type: InternetAddressType.IPv6,
        ), // OpenDNS
      ),
    ],
  );

  late List<AddressCheckOptions> _addresses;

  List<AddressCheckOptions> get addresses => _addresses;

  set addresses(List<AddressCheckOptions> value) {
    _addresses = List<AddressCheckOptions>.unmodifiable(value);
    _maybeEmitStatusUpdate();
  }

  /// Ping a single address. See [AddressCheckOptions] for
  /// info on the accepted argument.
  Future<AddressCheckResult> isHostReachable(
    AddressCheckOptions options,
  ) async {
    Socket? sock;
    try {
      sock = await Socket.connect(
        // If address is null, the [AddressCheckOptions] constructor will have
        // asserted that hostname must not be null.
        options.address ?? options.hostname,
        options.port,
        timeout: options.timeout,
      )
        ..destroy();
      return AddressCheckResult(
        options,
        isSuccess: true,
      );
    } catch (e) {
      sock?.destroy();
      return AddressCheckResult(
        options,
        isSuccess: false,
      );
    }
  }

  /// Initiates a request to each address in [addresses].
  /// If at least one of the addresses is reachable
  /// we assume an internet connection is available and return `true`.
  /// `false` otherwise.
  @override
  Future<bool> get isConnected async {
    final Completer<bool> result = Completer<bool>();
    int length = addresses.length;

    for (final AddressCheckOptions addressOptions in addresses) {
      // ignore: unawaited_futures
      isHostReachable(addressOptions).then(
        (AddressCheckResult request) {
          length -= 1;
          if (!result.isCompleted) {
            if (request.isSuccess) {
              result.complete(true);
            } else if (length == 0) {
              result.complete(false);
            }
          }
        },
      );
    }

    return result.future;
  }

  Future<bool> get connectionStatus async {
    return isConnected;
  }

  final Duration checkInterval;

  /// The timeout period before a check request is dropped and an address is
  /// considered unreachable.
  ///
  /// Defaults to [defaultTimeout] (10 seconds).
  final Duration checkTimeout;

  Future<void> _maybeEmitStatusUpdate([
    Timer? timer,
  ]) async {
    // just in case
    _timerHandle?.cancel();
    timer?.cancel();

    final bool currentStatus = await connectionStatus;

    // only send status update if last status differs from current
    // and if someone is actually listening
    if (_lastStatus != currentStatus && _statusController.hasListener) {
      _statusController.add(currentStatus);
    }

    // start new timer only if there are listeners
    if (!_statusController.hasListener) return;
    _timerHandle = Timer(checkInterval, _maybeEmitStatusUpdate);

    // update last status
    _lastStatus = currentStatus;
  }

  // _lastStatus should only be set by _maybeEmitStatusUpdate()
  // and the _statusController's.onCancel event handler
  bool? _lastStatus;
  Timer? _timerHandle;

  // controller for the exposed 'onStatusChange' Stream
  final StreamController<bool> _statusController =
      StreamController<bool>.broadcast();

  @override
  Stream<bool> get onChange => _statusController.stream;

  bool get hasListeners => _statusController.hasListener;

  /// Alias for [hasListeners]
  bool get isActivelyChecking => _statusController.hasListener;
}

class AddressCheckOptions {
  AddressCheckOptions({
    this.address,
    this.hostname,
    this.port = NetworkInfoImpl.defaultPort,
    this.timeout = NetworkInfoImpl.defaultTimeout,
  }) : assert(
          (address != null || hostname != null) &&
              ((address != null) != (hostname != null)),
          'Either address or hostname must be provided, but not both.',
        );

  final InternetAddress? address;
  final String? hostname;
  final int port;
  final Duration timeout;

  @override
  String toString() => 'AddressCheckOptions($address, $port, $timeout)';
}

class AddressCheckResult {
  AddressCheckResult(
    this.options, {
    required this.isSuccess,
  });

  final AddressCheckOptions options;
  final bool isSuccess;

  @override
  String toString() => 'AddressCheckResult($options, $isSuccess)';
}
