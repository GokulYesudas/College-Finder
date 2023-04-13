import 'package:flutter/material.dart';


class Event extends StatefulWidget {
  Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('about college'),),
    );
  }
}