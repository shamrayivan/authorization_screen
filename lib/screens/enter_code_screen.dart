import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sobes/color_bloc/color_bloc.dart';
import 'package:sobes/number_bloc/number_bloc.dart';
import 'package:sobes/widgets/button_request.dart';
import 'package:sobes/widgets/numbers_blocks_widget.dart';
import 'package:sobes/widgets/numeric_keypad.dart';

import '../widgets/text_enter_code_widget.dart';

class EnterCodeScreen extends StatelessWidget {
  const EnterCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NumberBloc>(
          create: (context) => NumberBloc(),
        ),
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(),
        ),
      ],
      child: Scaffold(
          backgroundColor: const Color(0xffFDFDFD),
          body: Center(
            child: BlocBuilder<NumberBloc, List>(
              builder: (context, state) {
                return ListView(
                    children: <Widget>[
                      // SizedBox(height: MediaQuery.of(context).padding.top),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios_rounded)),
                        ],
                      ),
                      const SizedBox(height: 55),
                      const TextEnterCode(),
                      const SizedBox(
                        height: 20,
                      ),
                      const NumbersBlocksWidget(),
                      const SizedBox(
                        height: 139,
                      ),
                       ButtonRequest(state: state),
                      const SizedBox(
                        height: 59,
                      ),
                      const NumericKeypad(),
                    ]);
              },
            ),
          )),
    );
  }
}
