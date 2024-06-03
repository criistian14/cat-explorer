import 'package:cat_explorer/features/counter/counter.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:get_it/get_it.dart';

part 'counter_injection.dart';
part 'shared_injection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initSharedInjection();
  await initCounterInjection();
}
