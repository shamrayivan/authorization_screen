import 'package:flutter/cupertino.dart';
import '../constants.dart';

class TextEnterCode extends StatelessWidget {
  const TextEnterCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
        child: Text(
          'Введите код',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Center(
        child: Text(
          'На ваш телефон +7 (960) 147-67-47 поступит звонок.',
          style: TextStyle(
              color: violetColor,
              fontSize: 12,),
        ),
      ),
      Center(
        child: Text(
          'Введите последние 4 цифры звонящего номера',
          style: TextStyle(
              color: violetColor,
              fontSize: 12,),
        ),
      ),
    ]
    );
  }
}
