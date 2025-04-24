import 'package:flutter/material.dart';
class flex_layout extends StatelessWidget {
  const  flex_layout ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purpleAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
