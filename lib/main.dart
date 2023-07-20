// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'package:flutter/widgets.dart';

// void main() =>
//   runApp(
//     const Center(
//       child:
//         Text('Hello, world!',
//           key: Key('title'),
//           textDirection: TextDirection.ltr,
//         ),
//       ),
//     );
import 'package:flutter/material.dart';
void main() {
runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    //   floatingActionButton: FloatingActionButton2(
    //     onPressed: _decrementCounter,
    //     tooltip: 'Decrement',
    //     child: Icon(Icons.subtract),
    //   ),
    //   floatingActionButton: FloatingActionButton1(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: Icon(Icons.add),
    //   ),
    // );

    floatingActionButton : Wrap(
       direction : Axis.horizontal,
       children: [
        Container(
          child: FloatingActionButton(onPressed: _decrementCounter, child: Icon(Icons.remove))
        ),
        Container(
          child: FloatingActionButton(onPressed: _incrementCounter, child: Icon(Icons.add)))
       ],
    ),
  );
}
}
