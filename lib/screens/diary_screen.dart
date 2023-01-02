import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DiaryScreen extends StatefulWidget {
  @override
  _DiaryScreen createState() => _DiaryScreen();
}

class _DiaryScreen extends State<DiaryScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diary'),
          centerTitle: true,
        ),
    );
  }

}