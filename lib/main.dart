import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:splash/widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';
//import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';
import 'package:css_colors/css_colors.dart';
import 'dart:async';
import 'dart:math';

void main() => runApp(MyApp());

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage(),
     );
   }
 }

 class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list;
  var random;

  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    random = Random();
    refreshList();
  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      list = List.generate(random.nextInt(10), (i) => "Item $i");
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pull to refresh"),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        child: ListView.builder(
          itemCount: list?.length,
          itemBuilder: (context, i) => ListTile(
                title: Text(list[i]),
              ),
        ),
        onRefresh: refreshList,
      ),
    );
  }
}

/* class DemoPage extends StatelessWidget {
   launchURL() {
     launch('https://flutter.dev');
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: RaisedButton(
           onPressed: launchURL,
           child: Text('Show Flutter homepage'),
         ),
       ),
     );
   }
 }   */

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
         canvasColor: Colors.green
      ),
      home: LinkifyExample(),
    );
  }
}

class LinkifyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter_linkify example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter_linkify example'),
        ),
        body: Center(
          child: Linkify(
            onOpen: _onOpen,
  text: "Made by https://cretezy.com \n\nMail: example@gmail.com \n\n  this is test http://pub.dev/ ",
          ),
        
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}   */


    //  body:MyHomePage(),// pages(),
  /*    bottomNavigationBar:new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: new Text("Home")
          ),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.work),
              title: new Text("Self Help")
          ),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.face),
              title: new Text("Profile")
          )
        ],
        currentIndex: index,
        onTap: (int i){setState((){index = i;});},
        fixedColor: Colors.white,
      ),  */
 /*     bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.green,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.red,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.add),
          title: new Text("Add"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.delete),
          title: new Text("Delete"),
        )
      ],
    ),
  ),   */
  





