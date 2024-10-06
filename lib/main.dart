import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          children: [
            Spacer(),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamAPoints++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamAPoints = teamAPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamAPoints = teamAPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    indent: 30,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamBPoints++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamBPoints = teamBPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {
                          teamBPoints = teamBPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
