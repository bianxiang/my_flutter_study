import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {

  var _currentMenuItem = "菜单1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
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
                Text(_currentMenuItem),
                PopupMenuButton(
                    onSelected: (value){
                      print(value);
                      setState(() {
                        _currentMenuItem = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        value: "菜单1",
                        child: Text("菜单1"),

                      ),
                      PopupMenuItem(
                        value: "菜单2",
                        child: Text("菜单2"),

                      ),
                      PopupMenuItem(
                        value: "菜单3",
                        child: Text("菜单3"),

                      ),
                    ]
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

