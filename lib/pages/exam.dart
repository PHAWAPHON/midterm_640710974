import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _text = "0";
  bool check = false;
  Widget buildItem({
    required String text,
    Color color = Colors.black,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_text == "0") {
            _text = text;
          } else {
            if (!check) _text += text;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 300.0,
        child: Column(
          children: [
            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.orange[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.notoSansThai(
                      color: color,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
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

  Widget buildSymbol({
    required String text,
    Color color = Colors.black,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_text == "0") {
            _text = text;
          } else {
            if (!check) _text += text;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 300.0,
        child: Column(
          children: [
            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.notoSansThai(
                      color: color,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
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

  @override
  Widget build(BuildContext context) {
    var itemList = [
      buildItem(text: "7", color: Colors.black),
      buildItem(text: "8", color: Colors.black),
      buildItem(text: "9", color: Colors.black),
      buildItem(text: "\u00F7", color: Colors.black),
      buildItem(text: "4", color: Colors.black),
      buildItem(text: "5", color: Colors.black),
      buildItem(text: "6", color: Colors.black),
      buildItem(text: "\u00D7", color: Colors.black),
      buildItem(text: "1", color: Colors.black),
      buildItem(text: "2", color: Colors.black),
      buildItem(text: "3", color: Colors.black),
      buildItem(text: "\u2212", color: Colors.black),
      buildItem(text: "0", color: Colors.black),
    ];

    var itemList_p = [
      buildSymbol(
        text: "\u00F7",
      ),
      buildSymbol(
        text: "\u00D7",
      ),
      buildSymbol(
        text: "\u2212",
      ),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Expanded(child: Container()),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    _text,
                    style: GoogleFonts.poppins(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _text = "0";
                      });
                    },
                    child: Expanded(
                      child: Container(
                        width: 1000,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "C",
                              style: GoogleFonts.notoSansThai(
                                color: Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _text = _text.substring(0, _text.length - 1);
                      });
                    },
                    child: Expanded(
                      child: Container(
                        width: 1000,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                        ),
                        child: Icon(
                          Icons.backspace_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Expanded(child: itemList[0]),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(child: itemList[1]),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(child: itemList[2]),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(child: itemList_p[0]),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(child: itemList[4]),
                  Expanded(child: itemList[5]),
                  Expanded(child: itemList[6]),
                  Expanded(child: itemList_p[1]),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(child: itemList[8]),
                  Expanded(child: itemList[9]),
                  Expanded(child: itemList[10]),
                  Expanded(child: itemList_p[2]),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _text += "0";
                      });
                    },
                    child: Container(
                      width: 800,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: GoogleFonts.notoSansThai(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _text += "+";
                      });
                    },
                    child: Container(
                      width: 800,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\u002B",
                            style: GoogleFonts.notoSansThai(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _text = "0";
                  });
                },
                child: Container(
                  width: 1200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.brown[50],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "=",
                        style: GoogleFonts.notoSansThai(
                          color: Colors.black,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//test 123124
//test 222222