import 'package:flutter/material.dart';
import 'package:salma1/adminside.dart';

import 'main.dart';

void main() => runApp(Addsupervisors());

class Addsupervisors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddsupervisorsState();
  }
}

class AddsupervisorsState extends State<Addsupervisors> {
  String _supervisor_name,_supervisor_ipaddress,_supervisor_email;
  final GlobalKey<FormState>_Add_Supervisor_Form_Key = GlobalKey<FormState>();
  add_supervisor() async {
    final formdata = _Add_Supervisor_Form_Key.currentState;
    if(formdata.validate()){
      formdata.save();
    }
  }
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
              leading: Icon(Icons.star,color: Colors.black),
              elevation: 0.0,
              iconTheme: new IconThemeData(color: Colors.black),
              title: Text(
                'Add Supervisor',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,
                    color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            endDrawer: adminside(),
            body: ListView(
              children: <Widget>[
                   Form(
                    key: _Add_Supervisor_Form_Key,               //This uniquely identifies the Form
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
                                    "Supervisor's Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),

                                ),

                              ),

                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Supervisor's Name",
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.black26,
                                  filled: true,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Please Enter The Name Of The Supervisor';
                                  }
                                },
                                onSaved: (val) {
                                  _supervisor_name = val;
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Supervisor's Ip Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),

                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Supervisor's Ip Address",
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.black26,
                                  filled: true,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Please Enter The IP Address Of The Supervisor';
                                  }
                                },
                                onSaved: (val) {
                                  _supervisor_ipaddress = val;
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Supervisor's Email Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),

                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Supervisor's Email Address",
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.black26,
                                  filled: true,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Please Enter The Email Address Of The Supervisor';
                                  }
                                },
                                onSaved: (val) {
                                  _supervisor_email = val;
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
                                    color: Colors.indigo,
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
                                'Assign Supervisor',
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
                              onPressed:  add_supervisor,
                            )
                        ),
                      ],
                    ),
                  ),

              ],
            )));
  }
}
