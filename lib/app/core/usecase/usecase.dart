import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:mentoria_clean/app/core/errors/failures.dart';

abstract class Usecase<Output, Input> {
  Future<Either<Failure, Output>> call(Input input);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
