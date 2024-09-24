import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

//services
import '../services/database.dart';
import '../services/navigation.dart';

class Authentication extends ChangeNotifier {
  late final FirebaseAuth _auth;
  late final Navigation _navigation;
  late final Database _database;

  Authentication() {
    _auth = FirebaseAuth.instance;
    _navigation = GetIt.instance.get<Navigation>();
    _database = GetIt.instance.get<Database>();
  }
}
