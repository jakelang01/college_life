import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class QuizletScreen extends StatefulWidget {
  @override
  _QuizletScreen createState() => _QuizletScreen();
}

class _QuizletScreen extends State<QuizletScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quizlet'),
          centerTitle: true,
        ),
    );
  }

}