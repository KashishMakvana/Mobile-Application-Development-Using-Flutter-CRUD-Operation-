import 'package:api_demo/UserModel.dart';
import 'package:api_demo/api_code.dart';
import 'package:flutter/material.dart';

class AddEdit extends StatefulWidget {
  AddEdit({super.key, this.model});

  UserModel? model;

  @override
  State<AddEdit> createState() => _AddEditState();
}

class _AddEditState extends State<AddEdit> {
  ApiCode api = ApiCode();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = widget.model?.userName ?? "";
    email.text = widget.model?.userEmail ?? "";
    phone.text = widget.model?.userContact ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Edit"),
      ),
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          TextField(
            controller: email,
          ),
          TextField(
            controller: phone,
          ),
          ElevatedButton(
              onPressed: () {
                UserModel model = UserModel();
                model.userName = name.text;
                model.userContact = phone.text;
                model.userEmail = email.text;

                if (widget.model != null) {
                  model.id = widget.model?.id??0.toString();
                  api.updateData(model).then((value) {
                    Navigator.pop(context);
                  });
                } else {
                  api.insertData(model).then((value) {
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