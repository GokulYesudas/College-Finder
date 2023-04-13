import 'package:flutter/material.dart';
import 'package:task/screens/college_list_screen.dart';

class MainGrid extends StatefulWidget {
  String image;
  MainGrid({required this.image, super.key});

  @override
  State<MainGrid> createState() => _MainGridState();
}

class _MainGridState extends State<MainGrid> {
  List<String> titles = [
    'Bachelor of Technology',
    'Bachelor of Architecture',
    'Pharmacy',
    'Law',
    'Management'
  ];
  List<IconData> icons = [
    Icons.school_sharp,
    Icons.architecture,
    Icons.medical_services_outlined,
    Icons.home,
    Icons.settings
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sort by',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: titles.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CollegeListScreen()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(icons[index]),
                                      const SizedBox(
                                        width: 13,
                                      ),
                                      Text(
                                        titles[index],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Radio(
                                      value: selectedIndex == index ? 1 : 0,
                                      toggleable: true,
                                      groupValue: selectedIndex,
                                      onChanged: (val) {
                                        setState(() {
                                          selectedIndex = val!;
                                        });
                                      })
                                ],
                              ),
                            );
                          })),
                    )
                  ],
                ),
              );
            });
      }),
      child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Stack(
            children: [
              Container(
                height: 135,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.7, 1]),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
              ),
              Container(
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      stops: [0.01, 1]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search College',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Text(
                        'Search through thousands of accredited colleges and universities onlint to find the right one for you. Apply in 3 min, and connect with your future',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
