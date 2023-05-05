import 'package:flutter/material.dart';
import 'package:sobes/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> number = ["","","","",];

  checkAndAdd(String num){
    for (int i = 0; i< number.length; i++){
      if (number[i] == ""){
        number[i] = num;
        setState(() {
        });
        break;
      }
    }
  }

  checkAndDelete(String num){
    for (int i = number.length - 1; i>= 0; i--){
      if (number[i] != ''){
        number[i] = num;
        setState(() {
        });
        break;
      }

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_rounded)),
              ],
            ),
            SizedBox(height: 55),
            const Center(
              child: Text(
                'Введите код',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'На ваш телефон +7 (960) 147-67-47 поступит звонок.',
                style: TextStyle(
                    color: Color(0xFF7B61FF), fontSize: 12, fontFamily: 'Lato'),
              ),
            ),
            const Center(
              child: Text(
                'Введите последние 4 цифры звонящего номера',
                style: TextStyle(
                    color: Color(0xFF7B61FF), fontSize: 12, fontFamily: 'Lato'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
                            offset: const Offset(
                                -1, 1), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Text(
                      number[0].toString() ?? "",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF7B61FF),
                          fontFamily: 'Lato'),
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
                            offset: const Offset(
                                -1, 1), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Text(
                          number[1].toString(),
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF7B61FF),
                          fontFamily: 'Lato'),
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
                            offset: const Offset(
                                -1, 1), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Text(
                          number[2].toString() ?? "",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF7B61FF),
                          fontFamily: 'Lato'),
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
                            offset: const Offset(
                                -1, 1), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Text(
                          (number[3].isNotEmpty)? number[3].toString() : "",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF7B61FF),
                          fontFamily: 'Lato'),
                    ))),
              ],
            ),
            SizedBox(
              height: 139,
            ),
            GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF7C62FF),
                            Color(0xFFBA62FF),
                          ],
                        )),
                    width: 345,
                    height: 51,
                    child: Center(
                        child: Text(
                      'Запросить ещё раз',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )))),
            SizedBox(
              height: 59,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                TextButton(
                    onPressed: () {
                      checkAndAdd('1');
                    }, child: Text('1', style: numberTextStyle)),
                SizedBox(height: 30,),
                  TextButton(
                    onPressed: () {
                      checkAndAdd('4');
                    },
                    child: Text(
                      '4',
                      style: numberTextStyle,
                    )),
                  SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('7');
                    },
                    child: Text(
                      '7',
                      style: numberTextStyle,
                    )),
                  SizedBox(height: 30,),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '',
                      style: numberTextStyle,
                    ))
              ],),
              Column(children: [
                TextButton(
                    onPressed: () {
                      checkAndAdd('2');
                    }, child: Text('2', style: numberTextStyle)),
                SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('5');
                    },
                    child: Text(
                      '5',
                      style: numberTextStyle,
                    )),
                SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('8');
                    },
                    child: Text(
                      '8',
                      style: numberTextStyle,
                    )),
                SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('0');
                    },
                    child: Text(
                      '0',
                      style: numberTextStyle,
                    ))
              ],),
              Column(children: [
                TextButton(
                    onPressed: () {
                      checkAndAdd('3');
                      // number.add('3');
                    }, child: Text('3', style: numberTextStyle)),
                SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('6');
                      // number.add('6');
                    },
                    child: Text(
                      '6',
                      style: numberTextStyle,
                    )),
                SizedBox(height: 30,),
                TextButton(
                    onPressed: () {
                      checkAndAdd('9');
                      // number.add('9');
                      // number.
                    },
                    child: Text(
                      '9',
                      style: numberTextStyle,
                    )),
                SizedBox(height: 30,),
                IconButton(onPressed: (){
                  checkAndDelete('');
                  // number.removeLast();
                }, icon: Icon(Icons.backspace_outlined), color: Color(0xFF7B61FF),)
              ],)
            ],),

      ]),
    ));
  }
}

