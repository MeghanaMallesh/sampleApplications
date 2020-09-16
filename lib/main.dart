import 'package:flutter/material.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:login/widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Emoji Picker Example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Emoji Picker Example"),
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
    child:InkWell(
      child:Text("uuuuuuuuuuuuuu"),
      onTap: (){
    
       Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new CustomBottomNavigationBar()));},
    ),),
    );
  }
}