import 'dart:convert';
import 'package:api_demo/UserModel.dart';
import 'package:http/http.dart' as http;

class ApiCode{
    Future<List<UserModel>> getDetails() async {
      var res = await http.get(Uri.parse("https://660672aebe53febb857df34e.mockapi.io/UserDemo"));
      print(res.statusCode);
      List<dynamic> userList = jsonDecode(res.body);
      List<UserModel> userModelList = [];
      for(int i=0;i<userList.length;i++){
        UserModel userModel = UserModel();
        userModel.userName = userList[i]["UserName"];
        userModel.userEmail = userList[i]["UserEmail"];
        userModel.userContact = userList[i]["UserContact"];
        userModel.id = userList[i]["id"];

        userModelList.add(userModel);
      }
        return userModelList;
    }

    Future<void> deleteUser(String id) async {
      await http.delete(Uri.parse("https://660672aebe53febb857df34e.mockapi.io/UserDemo/"+id));
    }

    Future<void> insertData(UserModel model) async {
        Map<String,Object>map = {};
        map["UserName"] = model.userName;
        map["UserEmail"] = model.userEmail;
        map["UserContact"] = model.userContact;

        await http.post(Uri.parse("https://660672aebe53febb857df34e.mockapi.io/UserDemo/"),body: map);
    }


    Future<void> updateData(UserModel model) async {
      Map<String, Object?>map = {};
      map["UserName"] = model.userName;
      map["UserEmail"] = model.userEmail;
      map["UserContact"] = model.userContact;
      await http.put(Uri.parse(
          "https://660672aebe53febb857df34e.mockapi.io/UserDemo/" + model.id),
          body:map);
    }
}