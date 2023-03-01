import 'package:app/view/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class addnote extends StatelessWidget {
  const addnote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addnoteform(),
      ),
    );
  }
}

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          customtextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          customtextfield(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          custombutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class custombutton extends StatelessWidget {
  const custombutton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        ),
      ),
    );
  }
}
