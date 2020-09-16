import 'package:flutter/material.dart';
import 'package:newapp/my_homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey,
        primaryIconTheme: IconThemeData(color: Colors.grey),
        primarySwatch: Colors.blue,
        errorColor: Colors.yellow,
      ),
       home: MyHomePage(),
    );
  }
}
