import 'package:flutter/material.dart';
import 'package:covid_app/nav.dart';
import 'package:flutter/services.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF17171A),
        scaffoldBackgroundColor: Color(0xFF17171A),
      ),
      title: 'Covid - 19 App',
      home: nav(),
    );
  }
}
