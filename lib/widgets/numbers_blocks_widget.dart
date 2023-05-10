import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants.dart';
import '../number_bloc/number_bloc.dart';

class NumbersBlocksWidget extends StatelessWidget {
  const NumbersBlocksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberBloc, List>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 65,
                width: 66,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(-1, 1),
                      ),
                    ]),
                child: Center(
                    child: Text(
                  state[0].toString(),
                  style: TextStyle(
                      fontSize: 32, color: violetColor, fontFamily: 'Lato'),
                ))),
            Container(
                height: 65,
                width: 66,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(-1, 1),
                      ),
                    ]),
                child: Center(
                    child: Text(
                  state[1],
                  style: TextStyle(
                      fontSize: 32, color: violetColor, fontFamily: 'Lato'),
                ))),
            Container(
                height: 65,
                width: 66,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(-1, 1),
                      ),
                    ]),
                child: Center(
                    child: Text(
                  state[2].toString(),
                  style: TextStyle(
                      fontSize: 32, color: violetColor, fontFamily: 'Lato'),
                ))),
            Container(
                height: 65,
                width: 66,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(-1, 1),
                      ),
                    ]),
                child: Center(
                    child: Text(
                  state[3].toString(),
                  style: TextStyle(
                      fontSize: 32, color: violetColor, fontFamily: 'Lato'),
                ))),
          ],
        );
      },
    );
  }
}
