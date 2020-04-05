import 'package:flutter/material.dart';
import 'package:salma1/superside.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//void main()=>runApp(supervisor_createreport());


class supervisor_createreport extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return supervisor_createreportState();
  }
}

class supervisor_createreportState extends State<supervisor_createreport> {
  String _bullyer_name,_Victum_name,_event_details,_event_action;
  final GlobalKey<FormState>_Add_Report_Form_Key = GlobalKey<FormState>();
  add_report() async {
    final formdata = _Add_Report_Form_Key.currentState;
    if(formdata.validate()){
      formdata.save();
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Bullying detection system',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Edit Report',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            endDrawer: superside(),
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
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.normal,
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
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                    ),
                  ],
                ),
                Form(
                  key: _Add_Report_Form_Key,               //This uniquely identifies the Form
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(30,5,30,10),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Bullyer Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),

                              ),

                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter the bullyer name",
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.black26,
                                filled: true,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please Enter The Name Of The bullyer';
                                }
                              },
                              onSaved: (val) {
                                _bullyer_name = val;
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Victum Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter the victum name",
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.black26,
                                filled: true,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please Enter The Name Of The Victum';
                                }
                              },
                              onSaved: (val) {
                                _Victum_name = val;
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Event Details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter the bullying event details",
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.black26,
                                filled: true,
                                contentPadding: new EdgeInsets.symmetric(vertical: 100.0, horizontal: 10.0),
                              ),
                              maxLines: null,
                              maxLength: null,
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please Enter The Event Details';
                                }
                              },
                              onSaved: (val) {
                                _event_details = val;
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Action Taken:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter the action taken",
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.black26,
                                filled: true,
                                contentPadding: new EdgeInsets.symmetric(vertical: 100.0, horizontal: 10.0),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please Enter The Action Taken To Solve The Event';
                                }
                              },
                              onSaved: (val) {
                                _event_action = val;
                              },
                            ),


                          ],
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

                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, index) {
                                  return Container(
                                    height: 40,
                                    child: Column(
                                      children: <Widget>[
                                        Text("Floor 1",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  );
                                }
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                          width: 250,
                          height: 50,
                          child:FlatButton(
                            //  color: Colors.white,
                            child: Text(
                              'Update Rrport',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            color: Colors.black87,
                            onPressed:  add_report,
                          )
                      ),
                    ],
                  ),
                ),

              ],
            )));
  }
}
