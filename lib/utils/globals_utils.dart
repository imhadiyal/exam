import 'dart:io';

import 'package:flutter/cupertino.dart';

class User {
  String? student_standard, student_grid, student_name;

  File? image;
}

class Globals {
  List<String> hobbie = ["", ""];
  List<TextEditingController> hobbiecontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
  Globals._();
  static final Globals globals = Globals._();
  User user = User();

  List<User> allUsers = [];
}
