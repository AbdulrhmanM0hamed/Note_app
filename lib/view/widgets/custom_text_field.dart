import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Title',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
