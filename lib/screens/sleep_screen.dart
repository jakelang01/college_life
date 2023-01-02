import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class SleepScreen extends StatefulWidget {
  @override
  _SleepScreen createState() => _SleepScreen();
}

class _SleepScreen extends State<SleepScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sleep'),
          centerTitle: true,
        ),
    );
  }

}