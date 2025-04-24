import 'package:flutter/material.dart';
class TabViewDemo extends StatelessWidget {
  const TabViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
            child: ListView(
              children: [
                Center(child: DrawerHeader(child: Text("Welcome..")))
              ],
            ),
        ),
        appBar: AppBar(
          title: const Text("TabBar Demo"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Setting",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Setting"),
            ),
            Center(
              child: Text("Calls"),
            ),
          ],
        ),
      ),
    );
  }
}

