import 'package:flutter/material.dart';
class nine_part_layout extends StatelessWidget {
  const nine_part_layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
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
