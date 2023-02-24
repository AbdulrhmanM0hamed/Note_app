import 'package:app/view/widgets/note_view_body.dart';
import 'package:flutter/material.dart';

void main() {}

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notesviewbody(),
    );
  }
}
