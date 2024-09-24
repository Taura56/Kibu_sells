import 'package:flutter/material.dart';
import 'package:kibu_sells/pages/login.dart';
import 'package:provider/provider.dart';

//services
import './services/navigation.dart';

//providers
import './providers/authentication.dart';

//packages
import 'package:firebase_analytics/firebase_analytics.dart';
import './pages/splash.dart';

void main() {
//   runApp(Splash(
//     key: UniqueKey(),
//     onInitializationComplete: ()
//{
  runApp(MainApp());
}
// ));
//}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Authentication>(create: (BuildContext _context) {
          return Authentication();
        })
      ],
      child: MaterialApp(
        title: 'KIBU SELLS',
        theme:
            ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 1, 6, 80)),
        navigatorKey: Navigation.navigatorKey,
        initialRoute: '/login',
        routes: {'/login': (BuildContext _context) => Login()},
      ),
    );
  }
}
