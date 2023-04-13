import 'package:flutter/material.dart';

class SaveIcon extends StatefulWidget {
  Color iconColor;
  double size;
  IconData icon;
  SaveIcon({required this.iconColor, required this.icon, required this.size, super.key});

  @override
  State<SaveIcon> createState() => _SaveIconState();
}

class _SaveIconState extends State<SaveIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        widget.icon,
        color: widget.iconColor,
      ),
    );
  }
}
