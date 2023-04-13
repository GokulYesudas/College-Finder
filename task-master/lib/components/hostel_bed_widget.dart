import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HostelBed extends StatefulWidget {
  Color bg;
  String text;
  Color bedColor;
  HostelBed(
      {required this.bg,
      required this.text,
      required this.bedColor,
      super.key});

  @override
  State<HostelBed> createState() => _HostelBedState();
}

class _HostelBedState extends State<HostelBed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(color: UtilColors().primaryColor, width: 0.5),
        color: widget.bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/bed.png',
              color: widget.bedColor,
            ),
            Text(
              widget.text,
              style: TextStyle(color: widget.bedColor),
            )
          ],
        ),
      ),
    );
  }
}
