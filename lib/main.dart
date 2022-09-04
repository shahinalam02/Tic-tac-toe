import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tic Tac Toe'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                "Turn : Cross",
                style: TextStyle(fontSize: 40),
              )),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                crossAxisCount: 3,
                children: [
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.blueAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
