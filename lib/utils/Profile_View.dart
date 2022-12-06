import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:matcher/matcher.dart";

class ProfileView extends StatelessWidget {
  var url;
  var name;
  var profile;
  ProfileView({required this.url, required this.name, required this.profile});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Container(
            height: 98,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black54,
            ),
            child: Image.asset(
              url,
              height: 98,
              width: 85,
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 13,
          right: 13,
          child: Container(
            height: 16,
            width: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 12),
                ),
                !profile ?  Image.asset(
                  "assets/images/Vector.png",
                  height: 10,
                  width: 10,
                ): Text(" "),
              ],
            ),
          ),
        ),
        profile
            ? Positioned(
              bottom: 45,
              left: 25,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/heart.png",
                      width: 25,
                      height: 23,
                    ),
                    SizedBox(height: 10,),
                    Image.asset(
                      "assets/images/text20.png",
                      width: 25,
                      height: 23,
                    ),
                  ],
                ),
              )
            : Text(""),
      ],
    );
  }
}
