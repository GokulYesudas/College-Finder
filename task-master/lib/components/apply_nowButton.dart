import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ApplyButton extends StatefulWidget {
 const ApplyButton({Key? key}) : super(key: key);

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: UtilColors().primaryColor),
      child:const Center(
        child: Text(
          'Apply Now',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
      ),
    );
  }
}
