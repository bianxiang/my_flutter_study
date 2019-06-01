import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {

  var _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              selected: _checkboxItemA,
              secondary: Icon(Icons.bookmark),
              title: Text("checkboxItemA"),
              subtitle: Text("checkboxItemADesc"),
              value: _checkboxItemA,
              onChanged: (value){
                setState(() {
                  _checkboxItemA = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: _checkboxItemA,
                    onChanged: (value){
                      setState(() {
                        _checkboxItemA = value;
                      });
                },
                  activeColor: Colors.black,
                ),

              

              ],
            )
          ],
        ),
      ),
    );
  }
}

