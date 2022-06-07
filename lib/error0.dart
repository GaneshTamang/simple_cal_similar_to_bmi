import 'package:flutter/material.dart';

class ErrorForZero extends StatelessWidget {
  const ErrorForZero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Cant divide by ZeRo'),
      ),
      body: Container(
        child: Text(
          "The Number divider by zero means that the value is divided into 0 peple or if we have 4 apples and it is divided into 0 people it doesnt make ssense",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
