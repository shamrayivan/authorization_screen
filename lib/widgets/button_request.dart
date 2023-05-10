import 'package:flutter/material.dart';

class ButtonRequest extends StatelessWidget {
  const ButtonRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF7C62FF),
                      Color(0xFFBA62FF),
                    ],
                  )),
              height: 51,
              child: const Center(
                  child: Text(
                'Запросить ещё раз',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )))),
    );
  }
}
