import 'package:flutter/material.dart';

void main()=>runApp(pychologist_ListReport());


class pychologist_ListReport extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return pychologist_ListReportState();
  }
}

class pychologist_ListReportState extends State<pychologist_ListReport> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        title: 'Bullying detection system',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.star,
                color: Colors.black54,
                size: 24.0,
              ),
              title: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),

              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.view_column,color: Colors.black54,),
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Reports List",
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
                                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child:  Text('Bully Name: ',
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
                                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Victim Name: ',
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
                                              child: Text('tasneem abdallah',
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
                                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Supervision Location: ',
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
                                              child: Text('Floor1',
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
                                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Supervisor Name: ',
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
                                              child: Text('Salma magdy',
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
                                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Date: ',
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
                                              child: Text('1/1/2020',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.normal,
                                                  )),
                                            ),

                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Time: ',
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
                                              child: Text('10:30',
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
                                                width: 250,
                                                child: FlatButton(
                                                  //  color: Colors.white,
                                                  child: Text(
                                                    'Show Details',
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
                                        ],
                                      )

                                    ],
                                  )

                                ]
                            )
                        );
                      }),
                )
              ],
            )
        ));

  }
}