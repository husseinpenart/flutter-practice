import 'package:basics/widget/body.widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blueAccent,
        appBar: AppBar(title: Text("Flutter basics")),
        body: NewWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked on floating action button"),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

