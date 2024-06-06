import 'package:cat_explorer/config/base_errors.dart';
import 'package:equatable/equatable.dart';

class CustomError extends Equatable implements ErrorSnackbarBase {
  const CustomError(
    this.message, {
    this.errorCode,
  });

  final String message;
  final String? errorCode;

  @override
  List<Object?> get props => [
        message,
        errorCode,
      ];
}

class CustomAlertError extends Equatable implements ErrorAlertBase {
  const CustomAlertError({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  List<Object?> get props => [
        title,
        description,
      ];
}

class HttpErrorParse extends Equatable implements ErrorSnackbarBase {
  const HttpErrorParse(
    this.endpoint, {
    this.code,
    this.message,
    this.expectedType,
    this.returnedType,
  });

  final String endpoint;
  final int? code;

  final String? message;
  final String? expectedType;
  final String? returnedType;

  @override
  List<Object?> get props => [
        endpoint,
        code,
        message,
        expectedType,
        returnedType,
      ];
}

class EndPointError extends Equatable implements ErrorSnackbarBase {
  const EndPointError({
    required this.code,
    required this.endpoint,
    this.message,
    this.isEmptyData = false,
  });

  final int code;
  final String endpoint;
  final String? message;
  final bool isEmptyData;

  @override
  List<Object?> get props => [
        code,
        endpoint,
        message,
        isEmptyData,
      ];
}

class CantOpenUrlError extends Equatable implements ErrorSnackbarBase {
  const CantOpenUrlError(this.url);

  final String url;

  @override
  List<Object?> get props => [
        url,
      ];
}
