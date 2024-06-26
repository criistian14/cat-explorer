import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension RouterExt on BuildContext {
  void goBack<T extends Object?>([T? result]) {
    read<RouterCubit>().goBack(result);
  }

  Future<T?> goPage<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return read<RouterCubit>().goPage(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }
}
