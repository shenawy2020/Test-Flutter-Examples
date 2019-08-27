import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(primaryColor: Colors.orangeAccent),
    title: "shneo",
    home: new myapp(),
  ));
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  double sildevalue=1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: new AppBar(
        title: Slider(
          min: 1,
          max: 3,
          divisions: 3,
          onChanged: (double value) {
            setState(() {
             sildevalue=value; 
            });
          },
          value: sildevalue,
        ),
      ),
      body: GridView.count(
        childAspectRatio: 16.0/(sildevalue  * 9.0),
        crossAxisCount: sildevalue.toInt(), 
        children: <Widget>[
          Card(
            child: new Row( children: <Widget>[
              new Text("sheno"),new Icon(Icons.local_movies,size: 40.0,)

            ],),
          ),
          Card(
            child: Text("date2"),
          ),
          Card(
            child: Text("date3"),
          ),
          Card(
            child: Text("date4"),
          ),
          Card(
            child: Text("date5"),
          ),
          Card(
            child: Text("date6"),
          ),
          Card(
            child: Text("date1"),
          ),
          Card(
            child: Text("date2"),
          ),
          Card(
            child: Text("date3"),
          ),
          Card(
            child: Text("date4"),
          ),
          Card(
            child: Text("date5"),
          ),
          Card(
            child: Text("date6"),
          )

        ],
      ),
    );
  }
}
