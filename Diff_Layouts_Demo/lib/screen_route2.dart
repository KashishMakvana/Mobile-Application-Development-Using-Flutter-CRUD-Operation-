import 'package:flutter/material.dart';
import 'package:layout_demo/screen_route1.dart';

class Screen_Route2 extends StatefulWidget {
  const Screen_Route2({super.key});

  @override
  State<Screen_Route2> createState() => _Screen_Route2State();
}

class _Screen_Route2State extends State<Screen_Route2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Screen2")),
      body: (
          Center(
            child: ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Screen1")),
          )
      ),
    );
  }
}















