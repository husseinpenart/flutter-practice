import 'dart:math';

import 'package:basics/root_bottom_navigation.dart';
import 'package:basics/screens/screen_one.dart';
import 'package:basics/screens/screen_two.dart';
import 'package:basics/widget/Buttons.dart';
import 'package:basics/widget/CardWidget.dart';
import 'package:basics/widget/Images.assets.dart';
import 'package:basics/widget/body.widget.dart';
import 'package:basics/widget/counter/Counter_screen.dart';
import 'package:basics/widget/list/list_screen.dart';
import 'package:basics/widget/person.dart';
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
      // home: CounterScreen(),
      // home: ListScreen(),
      home: RootBottomNavigation(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => RootBottomNavigation(),
        '/screenone': (BuildContext context) => ScreenOne(),
        '/screentwo': (BuildContext context) => ScreenTwo(),
      },
      // home: Scaffold(
      //   appBar: AppBar(title: const Text("Flutter Basics")),
      //   // body: NewWidget(),
      //   // body: rowcol(),
      //   // body: Images(),
      //   // body: ScrolView(),
      //   body: Buttons(),
      //   // body: CardWidget(),

      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () => debugPrint('clicked'),
      //     child: const Icon(Icons.ac_unit),
      //   ),
      // ),
    );
  }
}
