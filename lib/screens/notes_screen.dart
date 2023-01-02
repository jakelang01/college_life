import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreen createState() => _NotesScreen();
}

class _NotesScreen extends State<NotesScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notes'),
          centerTitle: true,
        ),
    );
  }

}