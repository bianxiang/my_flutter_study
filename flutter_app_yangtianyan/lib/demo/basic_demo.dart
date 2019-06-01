import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  var _textStyle = TextStyle(
    fontSize: 16,
  );

  var _zuthor = "李白";
  var _title = "讲讲价";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.5), BlendMode.hardLight),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeatY,
          image: NetworkImage("https://ss3.baidu.com/-rVXeDTa2gU2pMbgoY3K/it/u=1362208881,3931895225&fm=202"))),
//      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(

            child: Icon(Icons.pool,size: 32,color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(113, 154, 255, 1),
              border: Border.all(
                color: Colors.red,
                width: 5,
                style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 8),
                  color: Colors.teal,
                  blurRadius: 25,
                  spreadRadius: 6,
                )
              ],
              shape: BoxShape.circle,
//              gradient: RadialGradient(colors: [
//                Colors.red,
//                Colors.yellow,
//                Colors.deepPurple
//                ])
                gradient: LinearGradient (
                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.yellow,
                  Colors.deepPurple
                ])
            ),
          )
        ],
      ),
    );


  }
}