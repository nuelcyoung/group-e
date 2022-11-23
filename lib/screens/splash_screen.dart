import 'package:flutter/material.dart';
import 'package:pizza/screens/order_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 206, 198, 187),
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 320.0,
                child: Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.60,
                  color: const Color(0xffEAE6DF),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/pizza-tomato.png'),
                          width: 250.0,
                          height: 200,
                        ),
                        const Text(
                          "Pizza for you",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.bolt_sharp,
                              color: Colors.amber,
                            ),
                            Text(
                              "Everyday new pizza\n eat fresh pizza",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          onPressed: (() {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderScreen()));}),
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                Size(screenWidth * 0.8, 50)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffdcbc85)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Sign up with email",
                            style:
                                TextStyle(fontSize: 18.0, fontFamily: 'Sora'),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderScreen()));
                          }),
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                Size(screenWidth * 0.8, 50)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffffa200)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Sign up with Google",
                            style:
                                TextStyle(fontSize: 18.0, fontFamily: 'Sora'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 53.9,
                  right: 20.9,
                  child: GestureDetector(
                      onTap: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderScreen()));
                      }),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.5,
                            color: Colors.black54),
                      ))),
              const Positioned(
                top: 75.0,
                child: Image(
                  image: AssetImage('assets/images/chef.png'),
                  height: 300.0,
                  width: 400.0,
                ),
              ),
            ],
          ),
        ));
  }
}
