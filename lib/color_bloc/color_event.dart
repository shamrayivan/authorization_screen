part of 'color_bloc.dart';

@immutable
abstract class ColorEvent {}

class ChangeColor extends ColorEvent {
final int number;

  ChangeColor(this.number);
}
