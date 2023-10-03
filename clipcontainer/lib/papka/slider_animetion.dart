import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AnimationView extends StatefulWidget {
  const AnimationView({super.key});

  @override
  State<AnimationView> createState() => _AnimationViewState();
}

class _AnimationViewState extends State<AnimationView> {
  int current = 0;
  final carouselcontroller = CarouselController();

  final List<String> images = [
    "assets/images/Group 14.png",
    "assets/images/Home work 3.png",
    "assets/images/image 6.png",
    "assets/images/Phone.png",
    "assets/images/Rectangle (1).png",
    "assets/images/Rectangle (2).png",
    "assets/images/Rectangle (3).png",
    "assets/images/Rectangle 52 (1).png",
    "assets/images/Rectangle 52.png",
    "assets/images/Rectangle.png"
  ];

  final List<String> places = [
    "Тапшырма 1",
    "Тапшырма 2",
    "Тапшырма 3",
    "Тапшырма 4",
    "Тапшырма 5",
    "Тапшырма 6",
    "Тапшырма 7",
    "Тапшырма 8",
    "Тапшырма 9",
    "Тапшырма 10",
  ];

  List<Widget> genereteImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
              // width: 200,
              // height: 200,
              color: Colors.red,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CarouselSlider(
                carouselController: carouselcontroller,
                items: genereteImagesTiles(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy
                      .scale, // borborduk barakty kaisyl ykma meneen chonoitosun
                  viewportFraction: 0.3, // page kancha element chygat
                  autoPlay: true,
                  aspectRatio: 5, // biiiktik blildirilet height
                  onPageChanged: (index, other) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
              ),
              // AspectRatio(
              //   aspectRatio: 18 / 10,
              //   child: Center(
              //       child: Text(
              //     places[current],
              //     style: TextStyle(
              //         // fontSize: MediaQuery.of(context).size.width / 20
              //         fontSize: 20),
              //   )),
              // ),
              Row(
                children: [
                  ElevatedButton(onPressed: previous, child: Icon(Icons.west)),
                  ElevatedButton(onPressed: next, child: Icon(Icons.east))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void next() =>
      carouselcontroller.nextPage(duration: Duration(milliseconds: 500));
  void previous() =>
      carouselcontroller.previousPage(duration: Duration(milliseconds: 500));
}
