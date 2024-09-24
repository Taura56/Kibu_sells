import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final Function onPress;
  const Button(
      {required this.name,
      required this.height,
      required this.width,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.25),
          color: Color.fromARGB(255, 26, 182, 218)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(fontSize: 22.0, color: Colors.white, height: 1.5),
        ),
      ),
    );
  }
}
