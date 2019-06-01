import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("button"),
          onPressed: (){

          },
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: (){

          },
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,)

      ],
    );

    Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: StadiumBorder(),
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5),
//                      )
              )
          ),
          child: RaisedButton(
            child: Text("button"),
            onPressed: (){

            },
            splashColor: Colors.grey,
            textColor: Colors.white,
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16),
        RaisedButton.icon(
          onPressed: (){

          },
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          elevation: 0.0,
        ),


      ],
    );


    Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: StadiumBorder(),
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5),
//                      )
              )
          ),
          child: OutlineButton(
            highlightedBorderColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            child: Text("button"),
            onPressed: (){

            },
            splashColor: Colors.grey,
            textColor: Colors.white,
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16),
        OutlineButton.icon(
          onPressed: (){

          },
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,

        ),


      ],
    );


    Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Container(
          width: 130,
          child: OutlineButton(
            highlightedBorderColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            child: Text("button"),
            onPressed: (){

            },
            splashColor: Colors.grey,
            textColor: Colors.black,
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        )

      ],
    );


    Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );



    Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Theme(data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 32)
            )
        ),
            child: ButtonBar(

              children: <Widget>[
                OutlineButton(
                  highlightedBorderColor: Colors.grey,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  child: Text("button"),
                  onPressed: (){

                  },
                  splashColor: Colors.grey,
                  textColor: Colors.black,
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
                OutlineButton(
                  highlightedBorderColor: Colors.grey,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  child: Text("button"),
                  onPressed: (){

                  },
                  splashColor: Colors.grey,
                  textColor: Colors.black,
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            )
        )

      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedButton,
            buttonBarDemo


          ],
        ),
      ),
    );
  }
}
