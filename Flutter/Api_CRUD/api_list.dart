import 'package:api_demo/AddEdit.dart';
import 'package:flutter/material.dart';

import 'api_code.dart';

class APIList extends StatefulWidget {
  const APIList({super.key});

  @override
  State<APIList> createState() => _APIListState();
}

class _APIListState extends State<APIList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Demo"),),
      body: FutureBuilder(
        future: ApiCode().getDetails(),
        builder: (context, snapshot)
        {
           if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index)
                {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(snapshot.data![index].id),
                          Text(snapshot.data![index].userName),
                          IconButton(
                                onPressed: () {
                                    showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return AlertDialog(
                                            title: Text("Delete Data",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontWeight:
                                                FontWeight.bold)),
                                            content: Text("Are You Sure You Want To Delete This Data?", style: TextStyle(fontSize: 17)),
                                        actions: [
                                          TextButton(
                                            onPressed: () async {
                                              await ApiCode().deleteUser(snapshot.data![index].id).then((value) {
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
                          }, icon: Icon(Icons.delete)),
                          IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return AddEdit(model: snapshot.data![index],);
                            },
                          )).then((value) {
                            setState(() {

                            });
                          });
                        },
                        icon:Icon(Icons.edit))
                   ],
                 );
          },);
        }
        else{
          return CircularProgressIndicator();
        }
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddEdit();
            },
          )).then((value) {
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}