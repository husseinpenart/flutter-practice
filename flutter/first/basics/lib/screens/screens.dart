import 'package:basics/screens/screen_one.dart';
import 'package:basics/screens/screen_two.dart';
import 'package:basics/widget/Buttons.dart';
import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Style View")),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ScreenOne()),
                // );
                Navigator.pushNamed(context, '/screenone');
              },
              child: Text("first screen"),
            ),

            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ScreenTwo()),
                // );
                Navigator.pushNamed(context, '/screentwo');
              },
              child: Text("second screen"),
            ),
          ],
        ),
      ),
    );
  }
}
