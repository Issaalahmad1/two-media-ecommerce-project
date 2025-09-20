import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories =const <String>["Popular", "New", "Hot Deals", "Grocery", "Acce"];
  int selectedIndex = 0;
  List products = <Map>[
    {
      "name": "iPhone 12 pro",
      "price": "\$1,299",
      "Image": "assets/img/prodect1.png",
      "color": const Color(0xffCBD6FF).withAlpha(150),
    },
    {
      "name": "Macbook pro 2021",
      "price": "\$1,999",
      "Image": "assets/img/prodect2.png",
      "color": const Color(0xffE0E0E0).withAlpha(150),
    },
    {
      "name": "PS5 DualSense™ ",
      "price": "\$1,999",
      "Image": "assets/img/prodect3.png",
      "color": const Color(0xffFCEEE1).withAlpha(255),
    },
    {
      "name": "Pet Dog Toy",
      "price": "\$1,999",
      "Image": "assets/img/prodect4.png",
      "color": const Color(0xffFFE663).withAlpha(86),
    },
    {
      "name": "PS5 DualSense™ ",
      "price": "\$1,999",
      "Image": "assets/img/prodect5.png",
      "color": const Color(0xff66B4FB).withAlpha(23),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(),

          Positioned(
            top: 26.0,
            left: -33.0,
            child: Container(
              height: 173.0,
              width: 173,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(color: const Color(0xff9AAFFA), blurRadius: 80.0),
                ],
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: 284.0,
            left: 60.0,
            child: Container(
              height: 373.0,
              width: 373.0,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: const Color(0xff9AAFFA).withAlpha(181),
                    blurRadius: 100.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(186.5),
              ),
            ),
          ),
          Positioned(
            bottom: -20.0,
            right: -50.0,
            child: Container(
              height: 123.0,
              width: 123.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: const Color(0xffFF8B36), blurRadius: 50.0),
                ],
                borderRadius: BorderRadius.circular(61.5),
              ),
            ),
          ),
          Container(color: Colors.white.withAlpha(181)),
          Positioned(
            top: 40.0,
            left: 28,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 56,
              child: Column(
                spacing: 20.0,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                     const Text(
                        "Hey! What do \nyou want?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                      ),

                      Container(
                        height: 49.0,
                        width: 49.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffBFD3F9),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset("assets/img/29 5.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  SizedBox(
                    height: 35.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Text(
                            categories[index],
                            style: selectedIndex == index
                                ?const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                                :const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 27.0),
                      itemCount: categories.length,
                    ),
                  ),
                  SafeArea(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 200,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20.0,
                          childAspectRatio: 147.0 / 252.0,
                        ),
                        itemBuilder: (context, index) {
                          return Stack(
                            children:<Widget> [
                              SizedBox(
                                child: Column(
                                  spacing: 24.0,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 172.0,
                                      width: 147.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        color: products[index]["color"],
                                      ),
                                      child: Image.asset(
                                        products[index]["Image"],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Column(
                                        spacing: 4.0,
                                        children:<Text> [
                                          Text(
                                            products[index]["name"],
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            products[index]["price"],
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 90.0,
                                right: 10.0,
                                child: Container(
                                  height: 35.0,
                                  width: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon:const Icon(Icons.add, size: 18.0),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
