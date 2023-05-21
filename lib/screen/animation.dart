import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Animational extends StatefulWidget {
  const Animational({Key? key}) : super(key: key);

  @override
  State<Animational> createState() => _AnimationalState();
}

class _AnimationalState extends State<Animational> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: _rotate(),
    );
  }
}

Widget _rotate() {
  return Row(
    children: [
      Text(
        'Market \nYour growth\n Strategy',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
