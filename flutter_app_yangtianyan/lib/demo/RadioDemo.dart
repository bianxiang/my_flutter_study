import 'package:flutter/material.dart';
class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  var _radioGroupA = 0;

  _handleRadioValueChanged(int value){
    setState(() {
      _radioGroupA = value;

    });

  }

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
            Text("RadioGroupValue : $_radioGroupA"),
            SizedBox(height: 32,),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text("选项A"),
              subtitle: Text("选项A的描述"),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text("选项B"),
              subtitle: Text("选项B的描述"),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Radio(
                  activeColor: Colors.black,
                    value: 0,
                    groupValue: _radioGroupA,
                    onChanged: _handleRadioValueChanged
                ),
                Radio(
                    activeColor: Colors.black,
                    value: 1,
                    groupValue: _radioGroupA,
                    onChanged: _handleRadioValueChanged
                ),



              ],
            )
          ],
        ),
      ),
    );
  }
}
