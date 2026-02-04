import 'package:basics/widget/Images.assets.dart';
import 'package:basics/widget/body.widget.dart';
import 'package:basics/widget/row.col.dart';
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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Basics")),
        // body: NewWidget(),
        // body: rowcol(),
        // body: Images(),

        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

