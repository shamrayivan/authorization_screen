import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sobes/constants.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(violetColor) {
    on<ChangeColor>(_changeColor);
  }

  _changeColor(ChangeColor event, Emitter <Color> emit){
    List <Color> clr= [Colors.green, Colors.amberAccent, Colors.black, Colors.lime, Colors.redAccent];
    emit(clr[event.number]);
    print("from bloc ${event.number}");
  }
}
