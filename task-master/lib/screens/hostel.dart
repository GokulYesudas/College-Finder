import 'package:flutter/material.dart';
import 'package:task/components/apply_nowButton.dart';
import 'package:task/components/hostel_bed_widget.dart';
import 'package:task/utils/colors.dart';

class Hostel extends StatefulWidget {
  Hostel({Key? key}) : super(key: key);

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return
        //wrap this colum with padding
        SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HostelBed(
                text: '4',
                bedColor: Colors.white,
                bg: UtilColors().primaryColor,
              ),
              HostelBed(
                text: '3',
                bedColor: Colors.black,
                bg: Colors.white,
              ),
              HostelBed(
                text: '2',
                bedColor: Colors.black,
                bg: Colors.white,
              ),
              HostelBed(
                text: '1',
                bedColor: Colors.black,
                bg: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.38,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bed1.jpeg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.38,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bed2.jpeg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bed3.jpeg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.red),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    shape: BoxShape.circle,
                    color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    shape: BoxShape.circle,
                    color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    shape: BoxShape.circle,
                    color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    shape: BoxShape.circle,
                    color: Colors.white),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Facilites',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.apartment,
                      color: Colors.orange,
                    ),
                    Text(
                      'College in 400 meters',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      'Bathrooms : 2 ',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ApplyButton()
              ],
            ),
          )

          // SizedBox(
          //   height: 15,
          //   child: Row(
          //     children: [
          //       Text(
          //         'GHJK Engineering COllege',
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 18),
          //       ),
          //       Container(
          //         width: 30,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(6),
          //             color: Colors.green),
          //         child: Row(
          //           children: [
          //             Text(
          //               '4.3',
          //               style: TextStyle(color: Colors.white),
          //             ),
          //             Icon(
          //               Icons.star,
          //               color: Colors.white,
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
