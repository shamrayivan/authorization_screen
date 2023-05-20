import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sobes/color_bloc/color_bloc.dart';

class ButtonRequest extends StatelessWidget {
  const ButtonRequest({Key? key, this.state}) : super(key: key);
  final state;

  @override
  Widget build(BuildContext context) {
    var rng = Random.secure();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child:
      BlocBuilder<ColorBloc, Color>(
        builder: (context, state) {
          final numberBloc = BlocProvider.of<ColorBloc>(context);
          return
        GestureDetector(
              onTap: () {
                numberBloc.add(ChangeColor(rng.nextInt(5)));
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:  LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          state,
                          state,
                          Color(0xFFBA62FF),
                          // Color(0xFFBA62FF),
                        ],
                      )),
                  height: 51,
                  child:  const Center(
                      child: Text(
                    'Запросить ещё раз',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ))));
        },
      ),
    );
  }
}
