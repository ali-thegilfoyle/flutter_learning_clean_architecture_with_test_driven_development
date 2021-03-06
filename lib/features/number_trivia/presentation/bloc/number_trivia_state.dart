part of 'number_trivia_bloc.dart';

abstract class NumberTriviaState extends Equatable {
  late List propsList;

  NumberTriviaState() : super();

  @override
  List<Object?> get props => [propsList = const <dynamic>[]];
}

class Empty extends NumberTriviaState {
  @override
  List<Object?> get props;
}

class Loading extends NumberTriviaState {
  @override
  List<Object?> get props;
}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  Loaded({required this.trivia}) : super();

  @override
  List<Object?> get props => [trivia];
}

class Error extends NumberTriviaState {
  final String message;

  Error({required this.message}) : super();

  @override
  List<Object?> get props => [message];
}
