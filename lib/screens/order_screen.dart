import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza/widgets/food.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    int value = 1;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Image(
                  image: AssetImage('assets/images/pizza-icon.png'),
                  height: 30.0,
                ),
                Text("Pizza",
                    style: TextStyle(fontFamily: 'Sora', fontSize: 20.0))
              ],
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage('assets/images/location-icon.png'),
                  height: 30.0,
                ),
                DropdownButton(
                    value: value,
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Row(
                          children: const [
                            Text(
                              "Cairo,",
                              style: TextStyle(fontFamily: 'Sora'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Image(
                              image: AssetImage('assets/images/egypt-icon.png'),
                              height: 30.0,
                            ),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Row(
                          children: const [
                            Text(
                              "Italy,",
                              style: TextStyle(fontFamily: 'Sora'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Image(
                              image: AssetImage('assets/images/egypt-icon.png'),
                              height: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        value = value!;
                      });
                    }),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(3),
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow[50],
                  border: Border.all(color: Colors.grey, width: 2.0)),
              child: Stack(children: [
                const Icon(
                  Icons.favorite_border,
                  size: 40.0,
                ),
                Positioned(
                  child: Container(
                    padding: const EdgeInsets.all(3.1),
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red[400],
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: const Text(
                      '3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
      body: SizedBox(
        width: screenWidth * 1,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  physics: const BouncingScrollPhysics(),
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    Stack(
                      children: [
                        Center(
                          child: Opacity(
                            opacity: 0.2,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 98,
                                width: 230,
                                clipBehavior: Clip.none,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Opacity(
                            opacity: 0.2,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 94,
                                width: 290,
                                // clipBehavior: Clip.none,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 110,
                              width: 330,
                              // clipBehavior: Clip.none,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(221, 243, 242, 240),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                              padding: EdgeInsets.only(left: 190),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/eating-pizza.png",
                                ),
                              )),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: Image.asset(
                                "assets/images/fire.png",
                                height: 20,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30, left: 1),
                              child: Text(
                                "Eat Fresh Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 23, top: 35),
                              child: Image.asset("assets/images/tomato.png"),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 58),
                              child: Image.asset(
                                "assets/images/bolt.png",
                                height: 25,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                "Fast Delivery",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 64),
                              child: Image.asset("assets/images/basil.png"),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 35, top: 3),
                            //   child: Image(image: AssetImage('assets/images/plus.png'),)
                            // ),
                            Padding(
                                padding: EdgeInsets.only(left: 4, top: 200)),
                            Text(
                              "Near For You",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w300),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 35),
                            //   child: Image(
                            //     image: AssetImage(
                            //       "assets/images/ring.png",
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 46,
                      clipBehavior: Clip.none,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 234, 230, 223),
                              hintText: 'Search for favorite Pizza',
                              hintStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/search.png"))),
                            )),
                          ),
                          const Gap(20),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 234, 230, 223),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Image(
                                      image: AssetImage(
                                          "assets/images/filt.png")))),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      clipBehavior: Clip.none,
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
                                          Text('Pizza'),
                                          Icon(Icons.expand_more)
                                        ],
                                      )),
                                ),
                                const FoodItems(
                                    title: "Pepperoni",
                                    imgUrl: 'pizza-tomato.png',
                                    description:
                                        'Pepperoni pizza,Margarita Pizza Margherita Italian cuisine Tomato',
                                    amount: '19'),
                                const Gap(10),
                                const FoodItems(
                                    title: "Pepperoni",
                                    imgUrl: "pizza2.png",
                                    description:
                                        'Sweetened for warm and crispy taste, filled with milk',
                                    amount: '37'),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                FoodItems(
                                    title: "Pepperoni",
                                    imgUrl: "margarita-pizza-2.png",
                                    description:
                                        'Food pizza dish cuisine junk food,Fast Food,Flatbread,Ingredient',
                                    amount: '29'),
                                Gap(10),
                                FoodItems(
                                    title: "Pepperoni",
                                    imgUrl: 'margarita-pizza.png',
                                    description:
                                        'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes',
                                    amount: '25'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Positioned(
                bottom: 20.0,
                left: screenWidth * 0.25,
                child: SizedBox(
                  height: 90,
                  width: screenWidth * 0.55,
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        width: screenWidth * 0.55,
                        height: 60.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.home),
                            Icon(Icons.shopping_basket)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: screenWidth * 0.2,
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Image(
                              image: AssetImage("assets/images/scan.png"))),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
