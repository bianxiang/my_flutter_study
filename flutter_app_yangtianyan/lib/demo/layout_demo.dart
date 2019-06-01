import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 300,
          maxWidth: 200),
          child: Container(color: Colors.blue,),
        )


      ],
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0/9.0,
      child: Container(
        color: Colors.red,

      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(

      alignment: Alignment.topRight,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0,0),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8)
            ),


          ),
        ),
        SizedBox(height: 32,),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 103, 255, 1),
                  Color.fromRGBO(3, 54, 255, 1),
                  Color.fromRGBO(7, 103, 255, 1),
                ])
            ),
            child: Icon(Icons.settings,color: Colors.white,size: 16.0,),

          ),
        ),
        Positioned(
          right: 20.0,
          top: 120.0,
          child: Icon(Icons.ac_unit,color: Colors.white,size: 15.0,),
        ),
        Positioned(
          right: 20.0,
          top: 140.0,
          child: Icon(Icons.ac_unit,color: Colors.white,size: 18.0,),
        ),
        Positioned(
          right: 30.0,
          top: 50.0,
          child: Icon(Icons.ac_unit,color: Colors.white,size: 14.0,),
        ),
        Positioned(
          right: 10.0,
          top: 201.0,
          child: Icon(Icons.ac_unit,color: Colors.white,size: 10.0,),
        )
      ],
    );
  }
}
class IconBadge extends StatelessWidget {

  IconData icon;
  double size;

  IconBadge(this.icon,{
    this.size = 32.0
  });



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon,size: size,color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Colors.lightGreenAccent,
    );
  }
}