import 'package:find_flames/utils/Profile_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding: EdgeInsets.only(top: 15.h),
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:10),
                          height: 240.h,
                          width: double.infinity,
                          color: Color.fromARGB(255, 236, 185, 200),
                          //color: Color.fromARGB(255, 211, 110, 201),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/Ellipse1.png",
                                      width: 50.w,
                                      height: 50.h,
                                    ),
                                    Text(
                                      "Puzzles",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Color.fromRGBO(255, 95, 143, 1),
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/Vector1.png",
                                      height: 18.h,
                                      width: 20.w,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Container(
                                height: 120.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w),
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
                  height: 700.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    //color: Colors.green,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 60.h, left: 10.w, right: 10.w),
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Contact(
                                  uri: profileImages[index],
                                  name: names[index],
                                  message: messages[index],
                                  blueTick: blueTicks[index],
                                  time: "13:10",
                                  unread: unreads[index],
                                  Tim: disabled[index],
                                ),
                                Divider(
                                  thickness: 1,
                                )
                              ],
                            );
                          }),
                        ),
                      ),
                      Positioned(
                        top: -20.h,
                       
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(20.r),
                            child: Container(
                              height: 40.h,
                              width: 350.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
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
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/Home.png",
                height: 28.h,
                width: 29.w,
              ),
              Image.asset(
                "assets/images/globalsearch.png",
                height: 28.h,
                width: 29.w,
              ),
              Image.asset(
                "assets/images/calendaredit.png",
                height: 28.h,
                width: 29.w,
              ),
              Image.asset(
                "assets/images/messages3.png",
                height: 28.h,
                width: 29.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
