import 'package:flutter/material.dart';

// followed https://www.flutterclutter.dev/flutter/tutorials/calculator-app/2020/1093/

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreen createState() => _CalculatorScreen();
}

class _CalculatorScreen extends State<CalculatorScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter basic calculator',
      home: Scaffold(
          body: Calculation()
      ),
    );
  }
}

class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  late int result;

  @override
  Widget build(BuildContext context) {
    return ResultDisplay(text: '0');
  }
}

class ResultDisplay extends StatelessWidget {
  var text = '0';

  ResultDisplay({required this.text});

  final int result = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 80,
        color: Colors.black,
        child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 24),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34
              ),
            )
        )
    );
  }
}