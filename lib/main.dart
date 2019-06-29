import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "MY APP",
      home: new Homepage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
          //accentColor: Colors.orange,
          brightness: Brightness.light
      )
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  static String dataText = "hello flutter!!!";

  void _buttonClicked(){
    setState(() {
      if(dataText.startsWith("h")) {
        dataText = "Automatic change values...by clicking button on flutter";
      }else{
        dataText = "hello flutter!!!";
      }
    });
  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(dataText,style: new TextStyle(
              fontSize: 30
            ),),
            /*new RaisedButton(
              color: Colors.cyan,
              elevation: 4,
              child: new Text("submit",style: new TextStyle(color: Colors.white,fontSize: 15)),
              onPressed: _buttonClicked,
            )*/
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("HOME PAGE"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _buttonClicked,
      ),/*new Center(child: new Text("New flutter exprience and it was amazing!!")),*/
    );
  }
}

