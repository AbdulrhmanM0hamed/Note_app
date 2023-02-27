import 'package:app/view/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class addnote extends StatelessWidget {
  const addnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
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
            custombutton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class custombutton extends StatelessWidget {
  const custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width, // ياخد العرض على قد الاسكرين
        height: 55,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 113, 79, 236),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(fontSize: 18),
          ),
        ));
  }
}
