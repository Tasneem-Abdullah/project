//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salma1/about.dart';
import 'package:salma1/email.dart';
import 'package:salma1/superside.dart';
import 'package:salma1/supervisor_createreport.dart';

import 'Addsupervisors.dart';
import 'ListReports.dart';
import 'Viewsupervisors.dart';


class homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return home();
  }

}

class home extends State<homepage>{

  Widget build(BuildContext context){
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),

        routes:<String , WidgetBuilder> {
          'about' : (BuildContext context) => new about(),
          'home' : (BuildContext context) => new homepage(),
          'email' : (BuildContext context) => new email(),
          'create report' : (BuildContext context) => new supervisor_createreport(),
          'add supervisor' : (BuildContext context) => new Addsupervisors(),
          'list supervisor' : (BuildContext context) => new Viewsupervisors(),
          'list report' : (BuildContext context) => new ListReport(),
          'create report' : (BuildContext context) => new supervisor_createreport(),


        },
        home: Scaffold(
          appBar: AppBar(

            title: TextField(
              autofocus:false,
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 15,),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",

                prefixIcon: Icon(Icons.search,color: Colors.black54,),
              ),
            ),
            leading: Icon(Icons.star,color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: new IconThemeData(color: Colors.black),

          ),

          endDrawer: superside(),
          body:
          ListView(
            children: <Widget>[
              Container(
                child: Column(

                  mainAxisAlignment:MainAxisAlignment.center ,

                  children: <Widget>[

                    Text('Bullying History',
                      style: TextStyle(
                        fontSize:30,
                        fontStyle:FontStyle.italic,
                        fontFamily:"lora",
                        fontWeight: FontWeight.bold,

                      ) ,
                    ),


                  ],
                ),
              ),],
          ),
        )


    );

    //  );


  }


}

