import 'package:flutter/material.dart';
import 'package:layout_demo/screen_route2.dart';

class Screen_Route1 extends StatefulWidget {
  const Screen_Route1({super.key});

  @override
  State<Screen_Route1> createState() => _Screen_Route1State();
}

class _Screen_Route1State extends State<Screen_Route1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Screen1")),
      body: (
          Center(
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Route2(),));
              }, child: Text("Screen2")),
          )
      ),
    );
  }
}
