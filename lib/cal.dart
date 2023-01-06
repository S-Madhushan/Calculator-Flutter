import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calculater extends StatefulWidget {
  const calculater({super.key});

  @override
  State<calculater> createState() => _calculaterState();
}

class _calculaterState extends State<calculater> {
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();
  int? result=0,n1=0,n2=0;

  add(){
      setState(() {
        n1 = int.parse(no1.text);
        n2 = int.parse(no2.text);
        result = n1! + n2!;
      });
  }
  sub(){
      setState(() {
        n1 = int.parse(no1.text);
        n2 = int.parse(no2.text);
        result = n1! - n2!;
      });
  }
  mul(){
      setState(() {
        n1 = int.parse(no1.text);
        n2 = int.parse(no2.text);
        result = n1! * n2!;
      });
  }
  div(){
      setState(() {
        n1 = int.parse(no1.text);
        n2 = int.parse(no2.text);
        result = n1! ~/ n2!;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculater'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Result : $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: no1,
              decoration: InputDecoration(
                labelText: "Enter Frist Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: no2,
              decoration: InputDecoration(
                labelText: "Enter Secoend Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  add();
                  no1.clear();
                  no2.clear();
                }, child: Text("+")),
                ElevatedButton(onPressed: () {
                  sub();
                  no1.clear();
                  no2.clear();
                }, child: Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  mul();
                  no1.clear();
                  no2.clear();
                }, child: Text("*")),
                ElevatedButton(onPressed: () {
                  div();
                  no1.clear();
                  no2.clear();
                }, child: Text("/")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
