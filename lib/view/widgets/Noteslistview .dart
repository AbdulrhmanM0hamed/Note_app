import 'package:app/view/widgets/custtom_item_note.dart';
import 'package:flutter/material.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView.builder(itemBuilder: (context, index) {
        return Noteitem();
      }),
    );
  }
}
