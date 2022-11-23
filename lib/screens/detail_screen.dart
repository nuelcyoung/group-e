
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.53,
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
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xffeae7df),
                                border: Border.all(
                                    color: const Color(0xffdbd9da), width: 2.0),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.keyboard_arrow_left_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap(screenWidth * 0.72),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffeae7df),
                              border: Border.all(
                                  color: const Color(0xffdbd9da), width: 2.0),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
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
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
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
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
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
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 20.0),
                        borderRadius: BorderRadius.circular(200)),
                    child: Image(
                      image:
                          const AssetImage('assets/images/margarita-pizza.png'),
                      width: screenWidth * 0.50,
                      height: screenHeight * 0.25,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: screenWidth * 0.2,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xffeae7df),
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "S",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: screenWidth * 0.45,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xffffa000),
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "M",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: screenWidth * 0.7,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xffeae7df),
                        border: Border.all(
                            color: const Color(0xffdbd9da), width: 2.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "L",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Pepperoni Pizza",
                        style: TextStyle(fontSize: 30, fontFamily: 'Sora'),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Text(
                            "5/5",
                            style: TextStyle(fontSize: 20, fontFamily: 'Sora'),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        child: Text(
                          "Pepperoni pizza, Margarita Pizza Margherita Italian cuisine Tomato",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontFamily: 'Sora'),
                        ),
                      ),
                      Gap(30),
                      Text(
                        "100%",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Sora'),
                      )
                    ],
                  ),
                  const Gap(30),
                  Row(
                    children: const [
                      Text(
                        "Ingredients",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Sora'),
                      ),
                      Text(
                        "(Customisable)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Sora'),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xffeae7df),
                                border: Border.all(
                                    color: const Color(0xffdbd9da), width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 50,
                            height: 50,
                            child: TextField(
                              style: TextStyle(),
                              decoration: InputDecoration(
                                  filled: true,
                                  border: InputBorder.none,
                                  fillColor: Color(0xffe0e0e0)),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xffffa200),
                                border: Border.all(
                                    color: const Color(0xffffa200), width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Row(children: const [
                        Text(
                          "\$",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Sora'),
                        ),
                      ])
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
