import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class GroceryScreen extends StatefulWidget {
  @override
  _GroceryScreen createState() => _GroceryScreen();
}

class _GroceryScreen extends State<GroceryScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grocery'),
          centerTitle: true,
        ),
    );
  }

}