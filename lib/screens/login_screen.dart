import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreen createState() => _LogInScreen();
}

class _LogInScreen extends State<LogInScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Header'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(

            )
        )
    );
  }

}