import 'package:flutter/material.dart';

class Vpage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return Container(
                     margin:EdgeInsets.symmetric(vertical: 8.0),
       
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: new DecorationImage(
                               fit: BoxFit.fitWidth,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image=9',),
                              )
                          ),
                        ),
                        new SizedBox(
                          width:10.0,
                        ),
                        
                     Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             Text('Vikas Motor Service',style:TextStyle(color: Colors.grey),),
                          SizedBox(width:14),
                          
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          
                           children: <Widget>[
                             
                           new IconButton(
                                          icon:Icon(
                                     Icons.star,size: 17,
                                     color: Colors.orangeAccent,
                                           ),
                                   onPressed: null,
                                   ),
                         Text(' 4.6',style:TextStyle(fontSize:11.0,color: Colors.grey),),
                          ]
                         ), 
                      ],
                    ),  
                          new SizedBox(
                          width:60.0,
                           ),
                        
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
          
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: <Widget>[
                        Text(' 0.4 km away',style:TextStyle(fontSize:12.0,color: Colors.grey),),
                         new SizedBox(
                          width:20.0,
                           ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             new IconButton(
                                          icon:Icon(
                                     Icons.call,
                                     color: Colors.blue,
                                           ),
                                   onPressed: null,
                                       
                                     ),
                                   new IconButton(
                                          icon:Icon(
                                     Icons.directions,size: 30,
                                     color: Colors.blue,
                                           ),
                                   onPressed: null,
                                       
                                     ),
                           ],
                        ),
                          ], 
                        ),     
                       ],
                      ),
                      ],
                    ),
                  );
  }
}
