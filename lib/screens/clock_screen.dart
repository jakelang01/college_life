import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreen createState() => _ClockScreen();
}

class _ClockScreen extends State<ClockScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clock'),
          centerTitle: true,
        ),
    );
  }

}