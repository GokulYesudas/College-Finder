import 'package:flutter/material.dart';

class CollegeNameTab extends StatefulWidget {
  CollegeNameTab({Key? key}) : super(key: key);

  @override
  State<CollegeNameTab> createState() => _CollegeNameTabState();
}

class _CollegeNameTabState extends State<CollegeNameTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: const FittedBox(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            'ABCD College of Engineering',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
