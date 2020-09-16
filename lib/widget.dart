/*import 'package:flutter/material.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:image_crop/image_crop.dart';
//void main() => runApp(MyApp());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Emoji Picker Example",
      home: Scaffold(
        appBar: AppBar(

          title: //Row(
           // children: <Widget>[
           //   Icon(Icons.close)

           // ],
        //  )
          Text("Flutter Emoji Picker Example"),
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
  final cropKey = GlobalKey<CropState>();

  @override
  Widget build(BuildContext context) {
     return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(20.0),
    //  child: Crop(
     //   key: cropKey,
      child:Image.network(
       'https://picsum.photos/250?image=9'),
       // aspectRatio:1.3/ 2.0,
      
  );
  }
}*/
//import 'package:csapp/screens/Home_Page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix1;
import 'package:image_picker/image_picker.dart' as prefix0;
import 'package:login/test.dart';

import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_crop/image_crop.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}
int _index = 0;
final cropKey = GlobalKey<CropState>();
 class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
   
 @override
  void initState() {
  super.initState();
   }
 bool userNameData = false;
   _loadCounter() async {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new VideoApp()));
  /*  SharedPreferences prefs = await SharedPreferences.getInstance();
  //  String username = (prefs.getString("user_name"));
    String id= (prefs.getString("id"));
    
    if (id == null || id == ''){
     Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new SignInPage()));
    } else {
     // Navigator.pop(context);
       Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new MyaccPage(data: username,)));
            }*/
 }
      _loadCounte() async {
  /*  SharedPreferences prefs = await SharedPreferences.getInstance();
   String id= (prefs.getString("id"));
     if( (id == null || id == '')) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new SignInPage()));*/
    //} else {
    _settingModalBottomSheet(context);
    }
  

  File _image;
  getImageFile(prefix0.ImageSource source) async {
    var image = await ImagePicker.pickImage(source: source);
   /*  Crop(
        key: cropKey,
         image: FileImage(image),
        aspectRatio: 2.0 / 3.0,
     );*/
    /*  File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      ratioX: 1.0,
      ratioY: 1.0,
      maxWidth: 512,g:
      g:
      maxHeight: 512,
    );*/
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
     maxHeight:450,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        //CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
      iosUiSettings: IOSUiSettings(
        minimumAspectRatio: 1.0,
      )
    );
    
    setState(() {
      _image =croppedFile;
    });

    if (_image == null) {
     /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );*/
    } else {
     Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoApp (),
        ),
      );
    }
  }

 

  @override
  Widget build(BuildContext context) {
 return 
  Container(
   
  child: BottomNavigationBar(
  currentIndex: _index,
   onTap: (newIndex) => checkMe(newIndex),
   type: BottomNavigationBarType.fixed,
            items: [
BottomNavigationBarItem(icon: Icon(Icons.home,
color:Colors.grey,
), title: Padding(padding: EdgeInsets.all(0))),
BottomNavigationBarItem(icon: Icon(Icons.add_circle,
color: Colors.grey,
), title: Padding(padding: EdgeInsets.all(0))),
BottomNavigationBarItem(icon: Icon(Icons.search,
color: Colors.grey,
), title: Padding(padding: EdgeInsets.all(0))),
BottomNavigationBarItem(icon: Icon(Icons.person,
color: Colors.grey,
), title: Padding(padding: EdgeInsets.all(0))),
            ],
   ), );
  }
  void _settingModalBottomSheet(context) {
                             showModalBottomSheet(
                                 context: context,
                                 builder: (BuildContext bc) {
                                   return Container(
                                     child: new Wrap(
                                       children: <Widget>[
                                         new ListTile(
                                             leading: new Icon(Icons.photo_library),
                                             title: new Text('Gallery'),
                                             onTap: () {
                                              Navigator.pop(context);
                                               getImageFile(ImageSource.gallery);
                                             }),
                                         ListTile(
                                           leading: new Icon(Icons.camera),
                                           title: new Text('Camera'),
                                           onTap: () {
                                             Navigator.pop(context);
                                             getImageFile(ImageSource.camera);
                                           },
                                         ),
                                       ],
                                     ),
                                   );
                                 });
                           }
              
           
checkMe(index){
 // if((index != _index)||(index == 1)){//||(index == 2)){
setState(() => _index = index);
switch(index){
  case 0:
 //  Navigator.pop(context);
  // Navigator.of(context).push( new MaterialPageRoute(builder: (context) => new HomePage())); 
   break;
  case 1:
  if(index == _index){
  _loadCounte();
  }
 break;
 case 2:
 //if(index == _index){
  // Navigator.pop(context);
// Navigator.of(context).push( new MaterialPageRoute(builder: (context) => new SearchPage()));
// }
  break;
 case 3:
 _loadCounter();
 break;
 //default:Navigator.of(context).push( new MaterialPageRoute(builder: (context) => new HomePage()));
}
}
 }
//}