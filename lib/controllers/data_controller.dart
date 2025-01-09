import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';

class DataController {
  Future<List<Message>> loadMessages() async {
    final data = await rootBundle.loadString('data/datamessage.json');
    final List<dynamic> jsonData = json.decode(data);
    return jsonData.map((item) => Message.fromJson(item)).toList();
  }

  Future<User> loadUser() async {
    final data = await rootBundle.loadString('data/datauser.json');
    final jsonData = json.decode(data);
    return User.fromJson(jsonData);
  }
}
