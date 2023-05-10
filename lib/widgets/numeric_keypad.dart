import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../number_bloc/number_bloc.dart';

class NumericKeypad extends StatelessWidget {
  const NumericKeypad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberBloc, List>(
      builder: (context, state) {
        final numberBloc = BlocProvider.of<NumberBloc>(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventOne());
                    },
                    child: Text('1', style: numberTextStyle)),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventFour());
                    },
                    child: Text(
                      '4',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventSeven());
                    },
                    child: Text(
                      '7',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                      '',
                      style: numberTextStyle,
                    ))
              ],
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventTwo());
                    },
                    child: Text('2', style: numberTextStyle)),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventFive());
                    },
                    child: Text(
                      '5',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventEight());
                    },
                    child: Text(
                      '8',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventZero());
                    },
                    child: Text(
                      '0',
                      style: numberTextStyle,
                    ))
              ],
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventThree());
                    },
                    child: Text('3', style: numberTextStyle)),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventSix());
                    },
                    child: Text(
                      '6',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      numberBloc.add(AddNumberEventNine());
                    },
                    child: Text(
                      '9',
                      style: numberTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                IconButton(
                  onPressed: () {
                    numberBloc.add(DeleteNumberEvent());
                  },
                  icon: const Icon(Icons.backspace_outlined),
                  color: violetColor,
                )
              ],
            )
          ],
        );
      },
    );
  }
}
