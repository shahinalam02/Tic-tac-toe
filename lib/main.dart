import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enum/box_state.dart';
import 'package:tic_tac_toe/widgets/box_state_to_icon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  bool isCrossTurn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Tic Tac Toe',
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                  child: Text("Turn : ${isCrossTurn ? "Cross" : "Circle"}",
                      style: const TextStyle(fontSize: 40))),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                crossAxisCount: 3,
                children: [
                  // First Row
                  InkWell(
                    onTap: () {
                      print("Tab a");
                      setState(() {
                        if (a == BoxState.empty) {
                          if (isCrossTurn) {
                            a = BoxState.cross;
                          } else {
                            a = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: a),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab b");
                      setState(() {
                        if (b == BoxState.empty) {
                          if (isCrossTurn) {
                            b = BoxState.cross;
                          } else {
                            b = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: b),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab c");
                      setState(() {
                        if (c == BoxState.empty) {
                          if (isCrossTurn) {
                            c = BoxState.cross;
                          } else {
                            c = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: c),
                    ),
                  ),
                  // Second Row
                  InkWell(
                    onTap: () {
                      print("Tab d");
                      setState(() {
                        if (d == BoxState.empty) {
                          if (isCrossTurn) {
                            d = BoxState.cross;
                          } else {
                            d = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: d),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab e");
                      setState(() {
                        if (e == BoxState.empty) {
                          if (isCrossTurn) {
                            e = BoxState.cross;
                          } else {
                            e = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: e),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab f");
                      setState(() {
                        if (f == BoxState.empty) {
                          if (isCrossTurn) {
                            f = BoxState.cross;
                          } else {
                            f = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: f),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab g");
                      setState(() {
                        if (g == BoxState.empty) {
                          if (isCrossTurn) {
                            g = BoxState.cross;
                          } else {
                            g = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: g),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab h");
                      setState(() {
                        if (h == BoxState.empty) {
                          if (isCrossTurn) {
                            h = BoxState.cross;
                          } else {
                            h = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: h),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Tab i");
                      setState(() {
                        if (i == BoxState.empty) {
                          if (isCrossTurn) {
                            i = BoxState.cross;
                          } else {
                            i = BoxState.circle;
                          }
                          isCrossTurn = !isCrossTurn;
                        }
                      });
                    },
                    child: Container(
                      color: Colors.greenAccent,
                      child: BoxStateToIcon(boxState: i),
                    ),
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
