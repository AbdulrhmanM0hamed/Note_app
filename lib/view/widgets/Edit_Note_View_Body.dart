import 'package:app/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 50,
        ),
        customappbar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 40,
        ),
        customtextfield(
          hint: 'Title',
        ),
        SizedBox(
          height: 16,
        ),
        customtextfield(
          hint: 'Content',
          maxlines: 5,
        ),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
