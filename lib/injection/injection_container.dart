import 'package:cat_explorer/config/network_info.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

part 'cats_injection.dart';
part 'shared_injection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initSharedInjection();
  await initCatsInjection();
}
