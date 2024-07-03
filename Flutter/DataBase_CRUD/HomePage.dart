import 'package:my_crud_demo/database.dart';
import 'package:flutter/material.dart';
import 'insertStudent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyDatabase db = MyDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: FutureBuilder(
        future: db.copyPasteAssetFileToRoot(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return FutureBuilder(
              future: db.getDataFromStudent(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return InsertStudent(map: snapshot.data![index],);
                            },)).then((value) {
                              setState(() {

                              });
                            });
                          },
                          tileColor: Colors.grey,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(snapshot.data![index]["StuName"].toString(),
                                  style: TextStyle(fontSize: 25)),
                              Text(snapshot.data![index]["CPI"].toString())
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                    title : Text("Alert User!!"),
                                    content:Text("Are you Want to delete user??"),
                                      actions: [
                                        TextButton(
                                          onPressed: () async {
                                            db.deleteStudent(int.parse(snapshot.data![index]
                                            ['StuID'].toString())).then((value) {
                                              setState(() {

                                              });
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Text("Yes"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("No"),
                                        ),
                                      ],
                                    );
                                  });
                              }, icon: Icon(Icons.delete),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text("NO Data Found");
                }
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return InsertStudent();
            },
          )).then((value) {
            setState(() {

            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}