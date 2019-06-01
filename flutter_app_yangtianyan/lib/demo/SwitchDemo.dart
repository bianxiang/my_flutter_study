import 'package:flutter/material.dart';
class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var _switchItemA = false;

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
            SwitchListTile(
                value: _switchItemA,
                onChanged: (value){
                  setState(() {
                    _switchItemA = value;
                  });

                },
                title: Text("switchItemA"),
                subtitle: Text("switchItemA描述"),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA ? "😁":"😿",
                  style: TextStyle(fontSize: 50),
                ),
                Switch(

                    value: _switchItemA,
                    onChanged: (value){
                      setState(() {
                        _switchItemA = value;
                      });
                    }
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}

