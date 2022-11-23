import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Stack(children: [
        Container(
          height: screenHeight * 0.5,
          decoration: const BoxDecoration(
            color: Color(0xffeae7df),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(420, 310),
              bottomRight: Radius.elliptical(420, 310),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.03,
          left: screenWidth * 0.05,
          child: Container(
            height: screenHeight * 0.45,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
                color: const Color(0xffeae7df),
                border: Border.all(color: const Color(0xffdbd9da), width: 2.0),
                borderRadius: BorderRadius.circular(3000)),
          ),
        ),
        Positioned(
          top: screenHeight * 0.055,
          left: screenWidth * 0.1,
          child: Container(
            height: screenHeight * 0.4,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
                color: const Color(0xffeae7df),
                border: Border.all(color: const Color(0xffdbd9da), width: 2.0),
                borderRadius: BorderRadius.circular(3000)),
          ),
        ),
        Positioned(
          top: screenHeight * 0.08,
          left: screenWidth * 0.15,
          child: Container(
            height: screenHeight * 0.35,
            width: screenWidth * 0.7,
            decoration: BoxDecoration(
                color: const Color(0xffeae7df),
                border: Border.all(color: const Color(0xffdbd9da), width: 2.0),
                borderRadius: BorderRadius.circular(200)),
          ),
        ),
        Positioned(
          top: screenHeight * 0.103,
          left: screenWidth * 0.2,
          child: Container(
            height: screenHeight * 0.3,
            width: screenWidth * 0.6,
            decoration: BoxDecoration(
              //boxShadow: BoxShadow(offset: Offset.infinite),
                color: const Color(0xffebebeb),
                border: Border.all(color: const Color(0xffdbd9da), width: 2.0),
                borderRadius: BorderRadius.circular(200)),
          ),
        )
      ]),
    );
  }
}
