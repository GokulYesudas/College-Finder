import 'package:flutter/material.dart';
import 'package:task/components/back_arrow.dart';
import 'package:task/components/saveIcon.dart';
import 'package:task/screens/QnA.dart';
import 'package:task/screens/about_college.dart';
import 'package:task/screens/event.dart';
import 'package:task/screens/hostel.dart';
import 'package:task/utils/colors.dart';

class CollegeDetails extends StatefulWidget {
  const CollegeDetails({super.key});

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails>
    with TickerProviderStateMixin {
  @override
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UtilColors().primaryColor,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg_college.png'),
                      fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gpvj Engineering College',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
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
                        ))
                  ],
                )
              ],
            ),
          ),
          Material(
            elevation: 10,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(width: 0.3, color: Colors.black)),
              child: TabBar(
                controller: tabController,
                indicatorColor: UtilColors().primaryColor,
                tabs: [
                  Tab(
                    child: Text(
                      'About College',
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                  Tab(
                    child: Text('Hostel Facility',
                        style: TextStyle(color: Colors.black, fontSize: 11)),
                  ),
                  Tab(
                    child: Text('Reviews',
                        style: TextStyle(color: Colors.black, fontSize: 11)),
                  ),
                  Tab(
                    child: Text('Events',
                        style: TextStyle(color: Colors.black, fontSize: 11)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [AboutCollege(), Hostel(), QnA(), Event()])),
        ],
      ),
    );
  }
}
