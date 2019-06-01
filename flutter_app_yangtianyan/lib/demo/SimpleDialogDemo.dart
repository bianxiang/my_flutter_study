import 'package:flutter/material.dart';


enum Option {
  A,B,C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  var _choice = "nothing";

  _openSimpleDialog() async{
    var option = await showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text("SimpleDialog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("选项A"),
              onPressed: (){
                Navigator.pop(context,Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text("选项B"),
              onPressed: (){
                Navigator.pop(context,Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text("选项C"),
              onPressed: (){
                Navigator.pop(context,Option.C);
              },
            ),

          ],
        );
      },
    );

    switch (option) {
      case Option.A:
        setState(() {
          _choice = "A";
        });
        break;
      case Option.B:
        setState(() {
          _choice = "B";
        });
        break;
      case Option.C:
        setState(() {
          _choice = "C";
        });
        break;
      default:

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("你的选择是$_choice"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[



              ],
            )
          ],
        ),
      ),
    );
  }
}
