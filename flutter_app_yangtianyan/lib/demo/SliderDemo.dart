import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

  var _sliderItemA = 0.0;


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
                Slider(
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: "${_sliderItemA.toInt()}",
                  activeColor: Theme.of(context).accentColor,
                    inactiveColor: Theme.of(context).accentColor.withOpacity(0.2),
                    value: _sliderItemA,
                    onChanged: (value){
                      setState(() {
                        _sliderItemA = value;
                      });

                    }
                ),


              ],
            ),
            SizedBox(height:16),
            Text("slidervalue:$_sliderItemA"),

          ],
        ),
      ),
    );
  }
}
