import 'package:flutter/material.dart';

import 'database.dart';

class InsertStudent extends StatefulWidget {
  InsertStudent({super.key, this.map});

  Map? map;

  @override
  State<InsertStudent> createState() => _InsertStudentState();
}

class _InsertStudentState extends State<InsertStudent> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cpiController = TextEditingController();
  MyDatabase db = MyDatabase();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text =
    widget.map?['StuName'] == null ? "" : widget.map!['StuName'];
    cpiController.text =
    widget.map?['CPI'] == null ? "" : widget.map!['CPI'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insert Data"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Enter Student Name:"),
          ),
          TextFormField(
            controller: cpiController,
            decoration: InputDecoration(hintText: "Enter Student Cpi:"),
          ),
          ElevatedButton(
              onPressed: () {
                if (widget.map == null) {
                  db.insertStudent(StuName: nameController.text, CPI: cpiController.text).then((value) {
                    Navigator.pop(context);
                  });
                } else {
                  db.updateStudent(StuName: nameController.text, CPI: cpiController.text,StuID: widget.map!['StuID']).then((value) {
                    Navigator.pop(context);
                  });
                }
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}