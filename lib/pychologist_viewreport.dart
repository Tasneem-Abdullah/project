import 'package:flutter/material.dart';

void main()=>runApp(supervisor_createreport());


class supervisor_createreport extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return supervisor_createreportState();
  }
}

class supervisor_createreportState extends State<supervisor_createreport> {
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
              title: Text(
                'View Report',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: <Widget>[
                FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,color: Colors.lightBlue,),
                        Text("Back",style:TextStyle(color: Colors.lightBlue) ,)
                      ],
                    )
                ),
              ],
            ),
            body: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Align(
                    alignment: Alignment.center,
                    child:Text("Hey, Aisha",
                      style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,

                      ),),
                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:Text('Date:',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:Text('1/1/2020',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:Text('Time:',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:Text('10:00',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ),

                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:  Text('Bullyer Name: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
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
                                  fontWeight: FontWeight.bold,
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
                            child:  Text('Victum Name: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:  Text('tasneem abdallah',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),

                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 20, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:  Text('Event details: ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:  Text('Omar khaled has bullied mai and its not the first incedent for him and he is facing some family problems nowadays and low self esteem ,probably itsaffecting his attitude towards his environment',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                              )),
                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:  Text('Action taken: ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:  Text('I have spoke to his parents and made surehe is facing some troubles and they are ready to help in solving the situation',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                              )),
                        ),

                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30,10,30,0),
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Choose From the List below the Place you want your Supervisor to be Assigned to.",
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "PlayGround",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Floor1",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                          ),



                    ]),
                    )],
    )
    ])));

  }
}
