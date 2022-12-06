import 'package:find_flames/utils/Profile_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './utils/Contacts.dart';

class Home extends StatelessWidget {
  List<String> images = [
    "assets/images/Rectangle1.png",
    "assets/images/Rectangle2.png",
    "assets/images/Rectangle4.png",
    "assets/images/Rectangle5.png",
  ];
  List<String> profileImages = [
    "assets/images/Contact1.png",
    "assets/images/Contact2.png",
    "assets/images/Contact3.png",
  ];
  List<bool> profile = [true, false, false, false];
  List<String> names = ["Jordan", "Tim", "James"];
  List<String> names1 = ["Likes", "Tony", "James", "Jordan"];
  List<String> messages = ["Hii!", "Hii!", "Typing..."];
  List<String> unreads = [
    "assets/images/unread1.png",
    "",
    "assets/images/unread2.png"
  ];
  List<bool> blueTicks = [true, true, false];
  List<bool> disabled = [false,true,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:10),
                          height: 240,
                          width: double.infinity,
                          color: Color.fromARGB(255, 255, 194, 214),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/Ellipse1.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      "Puzzles",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(255, 95, 143, 1),
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/Vector1.png",
                                      height: 18,
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 120,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return ProfileView(
                                      url: images[index],
                                      name: names1[index],
                                      profile: profile[index],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Container(
                  // padding: EdgeInsets.only(top: 60, left: 10, right: 10),
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    //color: Colors.green,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 60.0, left: 10, right: 10),
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((context, index) {
                            return Contact(
                              uri: profileImages[index],
                              name: names[index],
                              message: messages[index],
                              blueTick: blueTicks[index],
                              time: "13:10",
                              unread: unreads[index],
                              Tim: disabled[index],
                            );
                          }),
                        ),
                      ),
                      Positioned(
                        top: -20,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 40,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  fillColor: Colors.amber,
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/Home.png",
                height: 28,
                width: 29,
              ),
              Image.asset(
                "assets/images/globalsearch.png",
                height: 28,
                width: 29,
              ),
              Image.asset(
                "assets/images/calendaredit.png",
                height: 28,
                width: 29,
              ),
              Image.asset(
                "assets/images/messages3.png",
                height: 28,
                width: 29,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
