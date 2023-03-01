import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          customiconsearcch(icon: icon),
        ],
      ),
    );
  }
}

class customiconsearcch extends StatelessWidget {
  const customiconsearcch({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
      ),
    );
  }
}
