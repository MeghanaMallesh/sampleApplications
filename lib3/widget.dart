import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


//import 'package:sapp/screens/Widgets/CustomBottomNavigationBar.dart';

class FollowerPage extends StatefulWidget {
 
  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
  


   @override
  void initState() {
    super.initState();
  
  }

  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: topBar,
      appBar: AppBar(
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed('/settings');
              // _select(choices[0]);
            },
          ),
          // home:DefalutTabController(
          //  length:2,

/*bottom: TabBar(
  tabs:[
    Tab(icon:Icon(Icons.settings,)),
    Tab(icon:Icon(Icons.settings,)),*/
        ],
      ),
      body:
      // SingleChildScrollView(
       Container(
   //       height: 600,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                /* Container(
                  height:165,
                child:  Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                 fit: BoxFit.fill,
                            image: new NetworkImage(
                                'https://picsum.photos/250?image',
                            ),
                              )
                            ),
                          ),
                          Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children:<Widget>[
                        new Text(
                          "Itis just a printing image with the flow and ",
                          style:TextStyle(fontWeight: FontWeight.normal,color: Colors.black,),
                        ),
                        SizedBox(
                          height:5,
                        ),
                        new Text(
                          "network image profile.",
                          style:TextStyle(fontWeight: FontWeight.normal),
                        ),
                       
                        ButtonTheme(
                       minWidth: 20.0,
                         height: 20.0,
                         child: RaisedButton(
                      onPressed:(){}, 
                      textColor: Colors.blue,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.blue,
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(40)),
  
                     padding: const EdgeInsets.all(3.0),
                      child: new Text(' Edit Profile ',
                        style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                      fontSize: 15.0,),
                      ),
                    ),),],),],),*/

                //Row(
                // mainAxisAlignment:MainAxisAlignment.spaceAround,
                //children: <Widget>[
                //Row(
                // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                //children: <Widget>[
                /* Text('10',style: TextStyle(color: Colors.grey,fontSize: 18),),
                        SizedBox(height: 2,),
                             // FlatButton(
                               new InkWell(
      child: Text('Posts',style: TextStyle(color: Colors.grey,fontSize: 15),),
        // onPressed: () {
          onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>MyaccPage()),
                                 );},),*/
                // },
                //  ),
                /* Text('10',style: TextStyle(color: Colors.grey,fontSize: 18),),
                           SizedBox(height: 5,),
                            new InkWell(
                          child:Text('Posts',style: TextStyle(color: Colors.grey,fontSize: 14,),),
                           onTap: () {}, ),*/
                // ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          '100',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        new InkWell(
                          child: Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '200',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        new InkWell(
                          child: Text(
                            'Following',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    Container(
                 //     width: 470.0,
                 //     height: 440.0,
                      child: ListView.builder(
                      itemCount: 1, //items.length,
                        
                   //       _follow.length,
                        itemBuilder: (context, index) {
                     //   {FollowerPage(_follow[index]);
                          return ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new NetworkImage(
                                              'https://picsum.photos/250?image',
                                            ),
                                          )),
                                    ),
                                    new SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Text(
                                            //    data,
                                            "Mohanmahan",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          new Text(
                                            "Following",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ]),
                                  ],
                                ),
                                // SizedBox(width:60,),

                                ButtonTheme(
                                  minWidth: 20.0,
                                  height: 20.0,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.blue,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.blue,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    padding: const EdgeInsets.all(3.0),
                                    child: new Text(
                                      '   Following   ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.blue,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      
  //    bottomNavigationBar: CustomBottomNavigationBar(),
      /* bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0, 
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home,color: Colors.blue,size: 20,),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.add_circle,color: Colors.blue,size:20,),
           title: new Text('Create'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person,color: Colors.blue,size:20,),
           title: Text('My Account')
         )
       ],
     ),*/
    );
  }
}
