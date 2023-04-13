import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MicWidget extends StatefulWidget {
  MicWidget({Key? key}) : super(key: key);

  @override
  State<MicWidget> createState() => _MicWidgetState();
}

class _MicWidgetState extends State<MicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: Colors.white),
      child: Icon(
        Icons.mic_rounded,
        color: UtilColors().primaryColor,
      ),
    );
  }
}
