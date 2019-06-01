import 'package:flutter/material.dart';

enum Action{
  Ok,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  var _choice = "nothing";

  Future _openAlertDialog()async{
    var action = await showDialog (
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("AlertDialog"),
          content: Text("你确定这样吗？"),
          actions: <Widget>[
            FlatButton(
                onPressed: (){
                  Navigator.pop(context,Action.Cancel);
                },
                child: Text("取消")
            ),
            FlatButton(
                onPressed: (){
                  Navigator.pop(context,Action.Ok);
                },
                child: Text("确定")
            )
          ],
        );

      },

    );

    switch (action){
      case Action.Ok:
        setState(() {
          _choice = "确定";
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = "取消";
        });
        break;
      default:

    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialogDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("你的选择是$_choice"),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                RaisedButton(
                  child: Text("打开AlertDialog"),
                  onPressed:_openAlertDialog,

                )


              ],
            )
          ],
        ),
      ),
    );
  }
}
