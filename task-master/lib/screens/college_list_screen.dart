import 'package:flutter/material.dart';
import 'package:task/components/college_list.dart';
import 'package:task/components/college_name_tab.dart';
import 'package:task/components/mic_widget.dart';
import 'package:task/components/search_bar.dart';
import 'package:task/utils/colors.dart';

class CollegeListScreen extends StatefulWidget {
  const CollegeListScreen({super.key});

  @override
  State<CollegeListScreen> createState() => _CollegeListScreenState();
}

class _CollegeListScreenState extends State<CollegeListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: UtilColors().primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SearchBar(), MicWidget()],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CollegeNameTab(),
                    SizedBox(width: 5,),
                    CollegeNameTab(),
                    SizedBox(width: 5,),
                    CollegeNameTab(),
                    SizedBox(width: 5,),
                    CollegeNameTab(),
                    SizedBox(width: 5,),
                    CollegeNameTab(),
                    SizedBox(width: 5,),
                    CollegeNameTab()
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [

                  // Pass Name of college with its image
                  CollegeList(
                      title: 'ABCD Engineering College',
                      img: 'assets/college.jpg'),
                  CollegeList(
                      title: 'ABCD Engineering College',
                      img: 'assets/college.jpg'),
                  CollegeList(
                      title: 'ABCD Engineering College',
                      img: 'assets/college.jpg'),
                  CollegeList(
                      title: 'ABCD Engineering College',
                      img: 'assets/college.jpg'),
                  CollegeList(
                      title: 'ABCD Engineering College',
                      img: 'assets/college.jpg'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
