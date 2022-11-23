import 'package:flutter/material.dart';
import 'package:pizza/screens/page_screen.dart';

class FoodItems extends StatelessWidget {
  const FoodItems(
      {required this.title,
      required this.imgUrl,
      required this.description,
      required this.amount,
      super.key});
  final String title;
  final String imgUrl;
  final String description;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      width: 1800,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            child: Container(
              height: 250.0,
              width: 165,
              decoration: BoxDecoration(
                  color: const Color(0xffeae6df),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 10.0, left: 5.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.bolt,
                          size: 30,
                          color: Colors.amber,
                        ),
                        Expanded(
                          child: Text(description),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '\$$amount',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 25,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(3),
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow[50],
                border: Border.all(color: const Color(0xffdfdfdf), width: 2.0),
              ),
              child: const Icon(Icons.favorite_outline),
            ),
          ),
          Positioned(
            top: 0,
            right: 50,
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xffeeeeee),
              ),
              child: Image(
                image: AssetImage('assets/images/$imgUrl'),
                width: 250.0,
                height: 200,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 25,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 50.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffffa200),
                border: Border.all(color: const Color(0xffdfdfdf), width: 2.0),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageScreen()));
                },
                child: const Text(
                  "Order now",
                  style: TextStyle(fontFamily: 'Sora', fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
