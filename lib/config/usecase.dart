import 'package:cat_explorer/config/types/typedef.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  const UseCase();

  ResultFuture<Type> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
