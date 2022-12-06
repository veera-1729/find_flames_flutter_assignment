import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatelessWidget {
  var uri = "";
  var name = "";
  var message = "";
  var time = "";
  bool blueTick;
  String unread;
  bool Tim;

  Contact({
    super.key,
    required this.uri,
    required this.name,
    required this.message,
    required this.blueTick,
    required this.time,
    required this.unread,
    required this.Tim,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                uri,
                height: 60,
                width: 60,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Tim ? GreyText(name: name) : NormalText(message: name),
                      const SizedBox(
                        width: 10,
                      ),
                      blueTick
                          ? Image.asset(
                              "assets/images/Vector.png",
                              height: 10,
                              width: 10,
                            )
                          : Text(""),
                    ],
                  ),
                  message == "Typing..."
                      ? Tim
                          ? GreyText(name: message)
                          : TypingText(message: message)
                      : Tim ? GreyText(name: message): NormalText(message: message),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tim ? GreyText(name: time) : NormalText(message: time),
              unread != ""
                  ? Image.asset(
                      unread,
                      width: 15,
                      height: 16,
                    )
                  : const Text(" "),
            ],
          )
        ],
      ),
    );
  }
}

class GreyText extends StatelessWidget {
  const GreyText({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Nunito",
          fontSize: 16,
          color: Colors.grey),
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Nunito",
          fontSize: 16,
          color: Colors.black),
    );
  }
}

class TypingText extends StatelessWidget {
  const TypingText({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Nunito",
          fontSize: 16,
          color: Colors.pink),
    );
  }
}
