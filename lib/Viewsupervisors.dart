import 'package:flutter/material.dart';

import 'adminside.dart';
import 'main.dart';

void main()=>runApp(Viewsupervisors());


class Viewsupervisors extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return viewsupervisorsnState();
  }
}

class viewsupervisorsnState extends State<Viewsupervisors> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        title: 'Bullying detection system',
        home: Scaffold(
           appBar: AppBar(
             leading: Icon(Icons.star,color: Colors.black),
             backgroundColor: Colors.white,
             elevation: 0.0,
             iconTheme: new IconThemeData(color: Colors.black),
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


      ),
            endDrawer: adminside(),
         body: Column(
           children: <Widget>[
         Row(
         children: <Widget>[
         Expanded(
         child: Align(
         alignment: Alignment.center,
           child: Text(
             "Supervisors List",
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 30,
               fontStyle: FontStyle.italic,
             ),
           ),
         ),
        )
      ],
    ),
    Expanded(
        child: ListView.builder(
         shrinkWrap: true,
    itemCount: 6,
    itemBuilder: (BuildContext context, index) {
          return Container(
          //height: 200,
              margin: EdgeInsets.all(10.0),
              decoration:
              BoxDecoration(border: Border.all(color: Colors.black54),
                color: Color.fromRGBO(204, 204, 204, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:  Text('Name: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:  Text('aisha mohamed',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:Text('Supervision location: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:Text('floor1',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:Text('IP Address: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:Text('123-456-678',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 150,
                              child: FlatButton(
                                //  color: Colors.white,
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0)),
                                color: Colors.black87,
                                onPressed:  (){},
                              ),
                            ),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 150,
                                  child:FlatButton(
                                    //  color: Colors.white,
                                    child: Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    color: Colors.black87,
                                    onPressed:  (){},
                                  )
                              )
                          ),

                        ),
                      ],
                    )


                  ],
                )

                ]
              )
    );
    })
    )]
         )));

  }
}