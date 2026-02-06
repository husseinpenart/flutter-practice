import 'package:basics/screens/screens.dart';
import 'package:basics/widget/counter/Counter_screen.dart';
import 'package:basics/widget/list/list_screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [CounterScreen(), ListScreen(), Screens()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.brown,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'Counter',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'listView'),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_lock_landscape),
            label: 'screens',
          ),
        ],
      ),
    );
  }
}
