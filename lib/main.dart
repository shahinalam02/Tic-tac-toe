import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enum/box_state.dart';
import 'package:tic_tac_toe/enum/game_state.dart';
import 'package:tic_tac_toe/widgets/box_state_to_icon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;
  GameState gameState = GameState.gameIsNotFinished;
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

  void resetGame() {
    setState(() {
      //First Row
      a = BoxState.empty;

      b = BoxState.empty;

      c = BoxState.empty;

//Second Row
      d = BoxState.empty;

      e = BoxState.empty;

      f = BoxState.empty;

//Third Row
      g = BoxState.empty;

      h = BoxState.empty;

      i = BoxState.empty;

      // reset GameState
      gameState = GameState.gameIsNotFinished;
    });
  }

  void gameScroeUpade() {
    // First Row
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Second Row
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Third Row
    if (g == h && h == i && g != BoxState.empty) {
      if (g == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // First Column
    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Second Column
    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Third Column
    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Right Slope
    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
    // Left Slope
    if (c == e && e == g && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gameState = GameState.cicleWon;
      } else {
        gameState = GameState.crossWon;
      }
    }
  }

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
        body: Stack(
          children: [
            Column(
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                              gameScroeUpade();
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
                InkWell(
                  onTap: () => resetGame(),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 80.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.greenAccent),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.refresh_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Reset The Game",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            gameState != GameState.gameIsNotFinished
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.greenAccent.withOpacity(0.7),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${gameState == GameState.cicleWon ? "Circle" : "Cross"}  Won",
                            style: const TextStyle(fontSize: 44.0),
                          ),
                          const SizedBox(height: 50),
                          InkWell(
                            onTap: () => resetGame(),
                            child: Container(
                              height: 80.0,
                              width: 300.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.teal[700]),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.refresh_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Reset The Game",
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
