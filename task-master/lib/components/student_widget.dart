import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  String img;
  Student({Key? key, required this.img}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 69,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image:
              DecorationImage(image: AssetImage(widget.img), fit: BoxFit.fill)),
    );
  }
}
