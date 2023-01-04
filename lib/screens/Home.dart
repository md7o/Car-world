// ignore_for_file: file_names, unused_local_variable, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/Brands.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image appLogo = const Image(
      image: ExactAssetImage("images/earth.png"),
      width: 175,
      height: 100,
      alignment: FractionalOffset.center);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      // Body

      body: Column(
        children: [
          // AppBar

          Container(
              height: 175.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.vertical(
                      bottom: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      "images/earth.png",
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Car World',
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              )),

          // AppBar

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: Text(
                  'Car Country',
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),

          // country
          for (final category in data)
            Stack(
              children: [
                // ignore: unused_local_variable
                for (WorldCar item in (category.items))
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return Brands(
                              item: category.items,
                              label: category.label,
                              img: category.img,
                              transitionAnimation: animation,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 800),
                          // transitionsBuilder:
                          //     (context, animation, animationTime, child) {
                          //   animation = CurvedAnimation(
                          //       parent: animation, curve: Curves.ease);
                          //   return ScaleTransition(
                          //       scale: animation, child: child);
                          // }
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            child: Container(
                              margin: const EdgeInsets.only(top: 10.5),
                              width: 200,
                              height: 54,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Align(
                                alignment: const Alignment(0.3, 0),
                                child: Text(
                                  category.label,
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.45, 0),
                            child: Image.asset(
                              category.img,
                              width: 76,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),

      // bottomNavigationBar: const naviBar(),
    );
  }
}
