import 'package:app/view/widgets/addnote_bottom%20sheet.dart';
import 'package:app/view/widgets/note_view_body.dart';
import 'package:flutter/material.dart';

void main() {}

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              context: context,
              builder: (context) {
                return const addnote();
              });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color.fromARGB(255, 113, 79, 236),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: notesviewbody(),
    );
  }
}
