// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  Map time = {"conuntry": "", "time": ""};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "page1",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/page2');

                if (result == null) {
                  time = {"conuntry": "", "time": ""};
                } else {
                  setState(() {
                    time = {
                      "conuntry": result["conuntry"],
                      "time": result["time"]
                    };
                  });
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "go to page2",
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              time["time"],
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              time["conuntry"],
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
