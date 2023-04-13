import 'package:flutter/material.dart';
import 'package:task/components/grid.dart';
import 'package:task/components/mic_widget.dart';
import 'package:task/components/search_bar.dart';
import 'package:task/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: UtilColors().primaryColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                        )
                      ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Search in 600 College around!',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [SearchBar(), MicWidget()],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    MainGrid(image: 'assets/bg1.jpg'),
                    MainGrid(
                      image: 'assets/bg3.jpg',
                    ),
                    MainGrid(
                      image: 'assets/bg4.jpg',
                    ),
                  ],
                ),
              )
            )
          ],
      ),
        ),
    );
  }
}
