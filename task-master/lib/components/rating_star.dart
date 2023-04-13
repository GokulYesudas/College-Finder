import 'package:flutter/material.dart';


class RatingStar extends StatefulWidget {
  RatingStar({Key? key}) : super(key: key);

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:const [
                                Text(
                                  '4.3',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          );
  }
}