import 'package:flutter/material.dart';
class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("home"),
              onPressed: null,

            ),
            FlatButton(
              child: Text("about"),
              onPressed: (){
                Navigator.pushNamed(context, "/about");
//                Navigator.of(context).push(
//                  MaterialPageRoute(builder: (BuildContext context) => Page(title:"About")),
//                );
              },

            ),
          ],
        ),
      ),
    );
  }
}


class Page extends StatelessWidget {

  var title = "";
  Page({
    this.title
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
