import 'package:app/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class notesviewbody extends StatelessWidget {
  const notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SizedBox(
        height: 50,
      ),
      customappbar(),
    ]);
  }
}
