import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          customiconsearcch(),
        ],
      ),
    );
  }
}

class customiconsearcch extends StatelessWidget {
  const customiconsearcch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
