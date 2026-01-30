import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,

      // height: 200,
      // width: 200,
      // decoration: BoxDecoration(
      //   color: Colors.blue,
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("First column grid"),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Text(
              "Helloooooooooo ",
              style: TextStyle(color: Colors.amber, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
