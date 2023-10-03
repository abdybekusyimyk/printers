import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool first = true;
  double fontSize = 60;
  Color color = Colors.blue;

  List pageName = [
    {"data": MyWidget222()},
    {"data": ThreePage()},
    {"data": MyWidget222()},
    {"data": MyWidget222()},
    {"data": MyWidget222()},
    {"data": MyWidget222()},
  ];

  List nameView = ["1", "2", "3", "4", "5", "6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                TextWidget(
                  text: nameView[0],
                  onTap: () {
                    // setState(() {});
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyWidget222()));
                  },
                )
              ],
            ),
            const SizedBox(height: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("data1"),
                Text("data2"),
                Text("data3"),
                Text("data4"),
                Text("data5"),
                Text("data5"),
              ],
            ),
            SizedBox(height: 60),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 400),
              style: TextStyle(
                  fontSize: fontSize,
                  color: color,
                  fontWeight: FontWeight.bold),
              child: GestureDetector(
                  onTap: () {
                    setState(() {});
                    fontSize = first ? 90 : 60;
                    first = !first;
                    color = first ? Colors.blue : Colors.red;
                  },
                  child: const Text("Flutter")),
            )
          ],
        ),
      ),
    );
  }
}

//
class TextWidget extends StatelessWidget {
  TextWidget({Key? key, required this.text, required this.onTap})
      : super(key: key);
  // List nameView = ["1", "2", "3", "4", "5", "6"];
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

//
class MyWidget222 extends StatelessWidget {
  const MyWidget222({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Ekinchi bet",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Uchunchu bet",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
