import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreen createState() => _NotesScreen();
}

class _NotesScreen extends State<NotesScreen> {

  final databaseReference = FirebaseFirestore.instance.collection("Notes");
  TextEditingController edit = TextEditingController();
  int noteCount = 1;
  String note = "";

  void writeNote(String input) {
    databaseReference.doc("Note $noteCount").set({"Note $noteCount": input});
    noteCount++;
  }

  void getNote(int number) async {
    DocumentSnapshot data =  await databaseReference.doc("Note " + number.toString()).get();
    var DBnote = data.get('note');
    setState(() {
      note = DBnote;
    });
  }

  void deleteNote(int number) {
    databaseReference.doc("Note " + number.toString()).delete();
  }

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
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: TextFormField(
                controller: edit,
                decoration: InputDecoration(
                  hintText: "Insert Your Note Here!",
                  border: OutlineInputBorder(),
                ),
                minLines: 12,
                maxLines: 12,
              ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ElevatedButton(
                child: Text("Submit Note"),
                  onPressed: () {
                    writeNote(edit.text);
                  }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: ElevatedButton(
                child: Text("Note Search"),
                onPressed: () {

                }),
          ),
        ],
      ),
    );
  }

}