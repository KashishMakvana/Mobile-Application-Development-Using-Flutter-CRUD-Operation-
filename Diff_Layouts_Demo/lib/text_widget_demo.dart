import 'package:flutter/material.dart';

class text_widget_demo extends StatelessWidget {
  const text_widget_demo({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text("This is Flutter Demo Page.")),
    //   body : const Stack(
    //     fit: StackFit.expand,
    //     children: [
    //       Image(image: NetworkImage("https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?s=2048x2048&w=is&k=20&c=t9_zg20wVbrBoGn0tw__1fFq4ykeKs15TQQ3x-ehVC0="),height: 200,width: 200,),
    //       Text("Hello2",style:TextStyle(color: Colors.red),),
    //     ],
    //   )
    // );

    return Stack(

      fit: StackFit.expand,

      children: [

        Image(image: NetworkImage("https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?s=2048x2048&w=is&k=20&c=t9_zg20wVbrBoGn0tw__1fFq4ykeKs15TQQ3x-ehVC0="), height: 100, width: 100,),

          Container(alignment: Alignment.center, child: Text("data1")),


      ],

    );

  }
}
