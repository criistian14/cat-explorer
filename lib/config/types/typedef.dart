import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'result.dart';

typedef ResultFuture<T> = Future<Result<T>>;
typedef ResultVoid = ResultFuture<void>;

typedef ResponseHTTP<T> = Response<T>;
