import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Style View")),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue[400],
            height: 100,
            child: Center(child: Text(index.toString())),
          );
        },
      ),
    );
  }
}
