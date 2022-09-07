import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enum/box_state.dart';
import 'package:tic_tac_toe/widgets/box_state_to_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

//First Row
  BoxState a = BoxState.empty;
  BoxState b = BoxState.empty;
  BoxState c = BoxState.empty;

//Second Row
  BoxState d = BoxState.empty;
  BoxState e = BoxState.empty;
  BoxState f = BoxState.empty;

//Third Row
  BoxState g = BoxState.empty;
  BoxState h = BoxState.empty;
  BoxState i = BoxState.empty;

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
                  // First Row
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: a),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: b),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: c),
                  ),
                  // Second Row
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: d),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: e),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: f),
                  ),
                  // Third Row
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: g),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: h),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: BoxStateToIcon(boxState: i),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
