import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/Screens/screen1.dart';
import 'package:provider_sample/Screens/screen2.dart';
import 'package:provider_sample/Screens/screen3.dart';
import 'package:provider_sample/provider/photoProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PhotoUrl()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Screen1(),
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}
