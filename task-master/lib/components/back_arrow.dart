import 'package:flutter/material.dart';

class BackArrow extends StatefulWidget {
  Color iconColor;
  double size;
  BackArrow({required this.iconColor,required this.size, super.key});

  @override
  State<BackArrow> createState() => _BackArrowState();
}

class _BackArrowState extends State<BackArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width:  widget.size,
      decoration:const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: widget.iconColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
