import 'package:flutter/material.dart';
import 'package:newapp/vpage.dart';



 class MyHomePage extends StatelessWidget {
  final topBar=new AppBar(
  backgroundColor: new Color(0xfff8faf8),
centerTitle: true,
elevation: 1.0,
//title: Padding(
        // padding: const EdgeInsets.only(top: 6.0),

       title:Column (
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: <Widget>[
        Row(
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
         Icon(Icons.search),
        SizedBox(width:10),
        
        Text('Search people & places',style:TextStyle(fontSize:12.0,color: Colors.grey)),
      //  Icon(Icons.input),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
         Icon(Icons.map),
         SizedBox(width:10),
        Icon(Icons.settings),
        
          ],
        ),
      ]
    ),
    ],
    ),
  );
    @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: topBar,
    body: Column(
       children:<Widget>[
         Vpage(),
         Vpage(),
         Vpage(),
         Vpage(),
         Vpage(),
          
       ],
     ),
      
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 70.0,
        alignment: Alignment.center,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
             Column(
             children: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.home,
                 ),
              onPressed: () {},
                ),
             Text('Mechanics',style:TextStyle(color: Colors.blue),),
             ],
             ),
              
             Column(
             children: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.account_box,
                 ),
              onPressed: null,
                ),
             Text('My Account',style:TextStyle(color: Colors.grey),),
             ],
             ),
          
            
          ]
        ),
    ),
 );
 }
}


  
