import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
   @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 /* BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      border:Border.all(
        width: 1,
        color: Colors.grey
      ),
      borderRadius: BorderRadius.all(Radius.circular(5.0),
     ) );
   }
  Widget myWidget() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration(), //             <--- BoxDecoration here
    child: Text(
      "text",
      style: TextStyle(fontSize: 30.0),
    ),
  );
}   */
   
    @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
         child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                      Container(
                        height: 190,
                          color:Colors.deepPurpleAccent,
                        padding: EdgeInsets.only(top: 1),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back,color: Colors.white,),
                    Text("JODYWISTERNOFF",style:TextStyle(color: Colors.white,fontSize: 15),),
                    Icon(Icons.settings,color: Colors.white,),
           ], ),
           //  SizedBox(height:60.0),    
      /*  child:  Column(
             children: <Widget>[
                Icon(Icons.camera,color: Colors.white,),
           ],), */

         ),
           SizedBox(height:70.0),  
             Container(
             child: Column(
           //    mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                          Text("Jody Wisternoff",style:TextStyle(color: Colors.black,fontSize: 25)),
                    ],
                  ),
                   SizedBox(height:8.0), 
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                          Text("Experimental electronic music poiner.",style:TextStyle(color: Colors.grey,fontSize: 16),),
                    ],
                  ),
                   SizedBox(height:3.0), 
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                          Text("Half of duo way out West.Boss at Anjundeep",style:TextStyle(color: Colors.grey,fontSize: 16),),
                    ],
                  ),
                   SizedBox(height:15.0), 
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  RaisedButton(
                     color: Colors.purple,
              onPressed: () {},
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text('  FOLLOWING',style:TextStyle(color: Colors.white,fontSize: 13)),
            ),
          
            new OutlineButton(
              onPressed: () {},
              color: Colors.purple,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text('    MESSAGE  ',style:TextStyle(color: Colors.purple,fontSize: 13),),
            ),
        ],),

            SizedBox(height:18.0), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('236',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('RECORDS',style:TextStyle(color: Colors.grey,fontSize: 13),),
              ],
            ),
             Column(
              children: <Widget>[
                Text('26.3k',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('RATINGS',style:TextStyle(color: Colors.grey,fontSize: 13),),
              ],
            ),
             Column(
              children: <Widget>[
                Text('2.8k',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('FOLLOWERS',style:TextStyle(color: Colors.grey,fontSize: 13),),
              ],
            ),
       ],
    ),
          SizedBox(height:20.0), 
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('TOP 100',style:TextStyle(color: Colors.grey),),
                     Text('CATEGORIES',style: TextStyle( decoration: TextDecoration.underline,color: Colors.purple),),
                     Text('TRACKS',style:TextStyle(color: Colors.grey),),
                     Text('RELEASES',style:TextStyle(color: Colors.grey),),
                     Text('COMPI',style:TextStyle(color: Colors.grey),),
                ],),

          SizedBox(height:18.0), 
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                  //    width:100 ,height:115 ,color:Colors.purple,
                      height: 115.0,
                          width: 100.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: new DecorationImage(
                               fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image',),
                           )
                        ),
                 
                   child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                    SizedBox(height: 5),
                    Icon(Icons.add_circle,size: 33,color: Colors.purple),
                    SizedBox(height: 4),
                    Text('Add',style:TextStyle(color: Colors.white)),
                    Text('Category',style:TextStyle(color: Colors.white)),
                ],),
              ),
                     Container(
                      height: 115.0,
                          width: 100.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: new DecorationImage(
                               fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image',),
                           )
                        ),
                 child:   Column(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      SizedBox(height: 45),
              Text('Deepa House',style:TextStyle(color: Colors.white)),
                    SizedBox(height: 3),
              Text('235.758tracks',style:TextStyle(color: Colors.grey)),
             ],),
           ),
                   Container(
                         height: 115.0,
                          width: 100.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: new DecorationImage(
                               fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image',),
                             )
                          ),

                           child:   Column(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      SizedBox(height: 45),
                 Text('Electronics',style:TextStyle(color: Colors.white)),
                    SizedBox(height: 3),
                 Text('135.758tracks',style:TextStyle(color: Colors.grey)),
                  ],),
               ),

            ],),  
         ],),
     ),
   ],),
  ),
);
}}