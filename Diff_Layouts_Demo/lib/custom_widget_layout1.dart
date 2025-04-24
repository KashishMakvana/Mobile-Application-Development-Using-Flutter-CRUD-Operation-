import 'package:flutter/material.dart';
class custom_widget_layout1 extends StatelessWidget {
  const custom_widget_layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 1),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomW(3,Colors.purple)
                      ],
                    ),
                  ),
                  Expanded(
                    flex:3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                                  CustomW(1,Colors.red),
                                  CustomW(1,Colors.blue),
                                  CustomW(1,Colors.green),
                                  CustomW(1,Colors.grey),
                                  CustomW(1,Colors.yellow),
                                  CustomW(1,Colors.brown)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded CustomW(flex,color) {
    return Expanded(
      flex: flex,
                      child: Container(
                        color: color,
                      ),
                    );
  }
}
