part of 'number_bloc.dart';

@immutable
abstract class NumberEvent {
}

class AddNumberEventNumber extends NumberEvent{
  final String number;

  AddNumberEventNumber(this.number);
}
class DeleteNumberEvent extends NumberEvent{
}
