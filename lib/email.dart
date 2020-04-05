import 'package:flutter/material.dart';
import 'package:salma1/adminside.dart';

import 'main.dart';

class email extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Email();
  }

}


class Email extends State<email>{
  Widget build(context){


    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:
        AppBar(
        leading: Icon(Icons.star,color: Colors.black),
    backgroundColor: Colors.white,
    elevation: 0.0,
    iconTheme: new IconThemeData(color: Colors.black),

    ),


    endDrawer: adminside(),
    body: ListView(
      children: <Widget>[
      Container(

    padding: EdgeInsets.all(15.0),
    child: Column(
    //mainAxisAlignment:MainAxisAlignment.center ,
    children: <Widget>[
    Text('Send Us A Mail',
    style: TextStyle(
    fontSize:30,
    fontStyle:FontStyle.italic,
    fontFamily:"Lato",
    fontWeight: FontWeight.bold,


    ) ,
    ),
    Padding(padding:EdgeInsets.only( top: 15.0, right: 15, left: 15.0), child:TextField(
    cursorColor: Colors.black,
    maxLength: 30,
    autofocus: false,
    style: TextStyle(fontSize: 15,),
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(9)),
    borderSide: BorderSide(width: 2,color: Colors.black26),
    ),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(9.0)),


    hintText: "Enter Your Email Address",

    ))
    ),


    Padding(padding:EdgeInsets.only(  right: 15, left: 15.0), child:TextField(
    cursorColor: Colors.black,
    maxLength: 1000,
    maxLines: 15,
    autofocus: false,
    style: TextStyle(fontSize: 15,),
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(9)),
    borderSide: BorderSide(width: 2,color: Colors.black26),
    ),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(9.0)),


    hintText: "Enter Your Email Contet Here",

    ))
    ),
  //  Padding(padding:EdgeInsets.only(  right: 15, left: 15.0), child:
    Padding(padding:EdgeInsets.only(top:15, bottom: 15.0, right: 15, left: 15.0), child: FlatButton(
    padding: EdgeInsets.only(top:15,right: 30,left: 30,bottom: 15),

    color: Colors.black26,

    child: Text("Send", style: TextStyle(
    color: Colors.black,
    fontSize: 30,

    ),
    ),
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(25.0)),


    onPressed:(){},

    ),
    ),
//

    //),
    ],
    ),
      ), ]
      ),
    ),
    );


  }
}
