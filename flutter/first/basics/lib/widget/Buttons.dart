import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool switchState = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onLongPress: () {
            print("LongPress");
          },
          onPressed: () {
            print("Pressed");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent[400],
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Button Text"),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            print("Icon presses");
          },
          icon: Icon(Icons.ad_units_rounded),
        ),
        Switch(
          value: switchState,
          onChanged: (value) {
            setState(() {
              switchState = value;
            });
          },
        ),
      ],
    );
  }
}
