import 'package:basics/screens/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen Two")),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text(
                "Screen Two",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ScreenOne()),
                  // );
                  Navigator.pushNamed(context, '/screenone');
                },
                child: Text(
                  'go back to first screen',
                  style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
