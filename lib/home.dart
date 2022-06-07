import 'package:flutter/material.dart';
import 'package:twobtn/error0.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic num1 = 0, num2 = 0, sum = 0;
  final dynamic t1 = TextEditingController();
  final dynamic t2 = TextEditingController();
  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sum = 0;
    });
  }

  void doAddition() {
    setState(() {
      //here the value of text field canged into  int or is parsed to int
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      //here the value of text field canged into  int or is parsed to int
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      //here the value of text field canged into  int or is parsed to int
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      //here the value of text field canged into  int or is parsed to int

      num1 = double.parse(t1.text);

      num2 = double.parse(t2.text);
      double sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 207, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 134, 207, 195),
        elevation: 0,
        title: Text('Simple calculator'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Output: $sum',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 165, 16, 202),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(hintText: "Enter number one"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(hintText: "Enter number one"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("+"),
                    onPressed: doAddition),
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("-"),
                    onPressed: doSub),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("/"),
                    onPressed: () {
                      if (num2 == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ErrorForZero()));
                      } else {
                        doDiv();
                      }
                    }),
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("X"),
                    onPressed: doMul),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            MaterialButton(
                color: Colors.greenAccent,
                child: Text("Clear"),
                onPressed: doClear)
          ],
        ),
      ),
    );
  }
}
