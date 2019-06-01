import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  var _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet(){
    _bottomSheetScaffoldKey.currentState.showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width:  32,),
              Text("01:30 / 03:30"),
              Expanded(
                  child: Text("fix you - Coldplay",textAlign: TextAlign.right,)
              )
            ],
          ),
        ),
      );
    });

  }

  _openModelBottomSheet() async{
    var option = await showModalBottomSheet(context: context,
        builder: (BuildContext context){
            return Container(
              height: 200,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("选择A"),
                    onTap: (){
                      Navigator.pop(context,"A");
                    },
                  ),
                  ListTile(
                    title: Text("选择B"),
                    onTap: (){
                      Navigator.pop(context,"B");
                    },
                  ),
                  ListTile(
                    title: Text("选择C"),
                    onTap: (){
                      Navigator.pop(context,"C");
                    },
                  ),
                ],
              ),
            );
        }
    );

    print(option);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text("BottomSheetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FlatButton(
                    onPressed: _openBottomSheet,
                    child: Text("打开底部弹框")
                ),
                FlatButton(
                    onPressed: _openModelBottomSheet,
                    child: Text("打开model底部弹框")
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
