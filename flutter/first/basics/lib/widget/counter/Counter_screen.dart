import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter screen")),
      body: Center(
        child: Flexible(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: _counter >= 0 ? Colors.green : Colors.red,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                setState(() {
                  _counter = _counter - 1;
                });
              },
              backgroundColor: Colors.red,
              child: Icon(Icons.remove, color: Colors.white),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _counter = _counter + 2;
                });
              },
              heroTag: 'btn3',
              backgroundColor: Colors.amberAccent,
              child: Icon(Icons.unfold_more_double_sharp),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _counter = _counter * 2;
                });
              },
              heroTag: 'btn4',
              backgroundColor: Colors.amberAccent,
              child: Icon(Icons.multiple_stop_outlined),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                setState(() {
                  _counter = _counter + 1;
                });
              },
              backgroundColor: Colors.green,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
