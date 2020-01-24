import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data = [
    "DOLLAR",
    "EURO",
    "POUNDS",
    "AUS",
    "CANADA",
    "YEN",
    "DINAR",
    "BITTY",
    "RUBEL"
  ];

  var txt = "";
  var input = TextEditingController();
  var output = TextEditingController();
 
  change(int coun) {
    setState(() {
      txt = data[coun];
      switch (data[coun]) {
        case "DOLLAR":
          {
            output.text = ((double.parse(input.text)) * 71.3).toString();
            break;
          }
        case "EURO":
          {
            output.text = ((double.parse(input.text)) * 80.12).toString();
            break;
          }
        case "POUNDS":
          {
            output.text = ((double.parse(input.text)) * 94.08).toString();
            break;
          }
        case "AUS":
          {
            output.text = ((double.parse(input.text)) * 49.90).toString();
            break;
          }
        case "CANADA":
          {
            output.text = ((double.parse(input.text)) * 54.74).toString();
            break;
          }
        case "YEN":
          {
            output.text = ((double.parse(input.text)) * 0.66).toString();
            break;
          }
        case "DINAR":
          {
            output.text = ((double.parse(input.text)) * 235.39).toString();
            break;
          }
        case "BITTY":
          {
            output.text = ((double.parse(input.text)) * 70).toString();
            break;
          }
        case "RUBEL":
          {
            output.text = ((double.parse(input.text)) * 70).toString();
            break;
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Padding(
                    padding: EdgeInsets.all(40),
                  ),
                
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: input,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF404040),
                        hintText: "  Enter Amount In INR",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                
                  Text(
                    output.text,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    txt,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(bottom: 10),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "DOLLAR",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(0);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(bottom: 10),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "EURO",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          change(1);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(bottom: 10),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "POUNDS",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(2);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "AUS",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(3);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "CANADA",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          change(4);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "YEN",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(5);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "DINAR",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(6);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "BITTY",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(7);
                        },
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        minWidth: 110,
                        color: Color(0xFF404040),
                        child: Text(
                          "RUBEL",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          change(8);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
