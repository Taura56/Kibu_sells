import 'package:flutter/material.dart';

//services
import './services/navigation.dart';

//packages
import 'package:firebase_analytics/firebase_analytics.dart';
import './pages/splash.dart';

void main() {
  runApp(Splash(
    key: UniqueKey(),
    onInitializationComplete: () {
      runApp(MainApp());
    },
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KIBU SELLS',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 1, 6, 80)),
      navigatorKey: Navigation.navigatorKey,
    );
  }
}
