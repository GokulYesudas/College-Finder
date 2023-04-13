import 'package:flutter/material.dart';


class QnA extends StatefulWidget {
  QnA({Key? key}) : super(key: key);

  @override
  State<QnA> createState() => _QnAState();
}

class _QnAState extends State<QnA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('About College'),),
    );
  }
}