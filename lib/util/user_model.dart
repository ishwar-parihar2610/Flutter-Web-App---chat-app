import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_app/util/hive_adapter.dart';
import 'package:hive_flutter/adapters.dart';

class HiveUtil {
  static const userDetails = "userDataBox";
  static const userinfo = "userInfo";

  static adapterInit() async {
    Hive.registerAdapter(UserModelAdapter());
    await Hive.openBox<UserModel>(HiveUtil.userDetails);
  }

  static void setUser(UserModel userInfo) {
    var userBox = Hive.box<UserModel>(HiveUtil.userDetails);
    userBox.put(HiveUtil.userinfo, userInfo);
  }

  static UserModel? getUserData() {
    var user = Hive.box<UserModel>(HiveUtil.userDetails);
    return user.get(userinfo);
  }
}
