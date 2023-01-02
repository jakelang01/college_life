import 'package:flutter/material.dart';

class UnitScreen extends StatefulWidget {
  @override
  _UnitScreen createState() => _UnitScreen();
}

class _UnitScreen extends State<UnitScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit'),
          centerTitle: true,
        ),
    );
  }

}