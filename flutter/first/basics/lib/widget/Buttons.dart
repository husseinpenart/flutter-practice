import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

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
          value: true,
          onChanged: (value) {
            print(value);
          },
        ),
      ],
    );
  }
}
