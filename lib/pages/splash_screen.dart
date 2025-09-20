import 'package:ecommerce_app1/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomCenter,

          colors: <Color>[Colors.white, Color(0xff2F6FEC).withAlpha(230)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 53.0,
                    vertical: 48.0,
                  ),
                  child: const Text(
                    "Get Everything \nat Your \nDoorstep",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 53.0,
                  width: 53.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 53.0,
                    vertical: 0.0,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF5B6CFF),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Icon(Icons.arrow_forward, size: 30.0),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    Positioned(
                      top: 40,

                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(400 / 2),
                          color: Colors.white.withAlpha(120),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 50,
                      child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300 / 2),
                          color: Colors.white.withAlpha(90),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 120,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150 / 2),
                          color: Colors.white.withAlpha(140),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      left: 0,
                      bottom: 330,
                      child: SizedBox(
                        child: Image.asset("assets/img/Eureka!.png"),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 20,
                      child: SizedBox(
                        height: 143,
                        child: Image.asset("assets/img/Object-19.png"),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 0,
                      child: SizedBox(
                        height: 160,

                        child: Image.asset("assets/img/Object-10.png"),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 20,
                      right: 20,
                      child: SizedBox(
                        height: 78,
                        child: Image.asset("assets/img/Object-2.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
