import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{

  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class LocalDAtabaseFailure extends Failure {
  const LocalDAtabaseFailure({
    String message = "Local database operaton failure",
  }) : super(message);
}

class ApiFailure extends Failure {
  final int? statusCode;

  const ApiFailure({this.statusCode, required String message}) : super(message);
}