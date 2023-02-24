import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(.9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              subtitle: Text(
                'Build your career with Abdulrhman Mohmed',
                style: TextStyle(
                    color: Colors.black.withOpacity(.6), fontSize: 12),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
            Text(
              'May 21 2022',
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
