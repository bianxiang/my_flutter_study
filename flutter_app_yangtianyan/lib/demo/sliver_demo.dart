import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text("ninghao"),
//            pinned: true,
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "dsfdsfsdgsdfffdf".toUpperCase(),
                style: TextStyle(fontSize: 15.0,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400
                ),
              ),
              background: Image.network(
                "https://img03.sogoucdn.com/app/a/100520021/db2449e4f1002f72571e7c8ce059b95c",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGridDemo(),
          ))
        ],
      ),
    );
  }
}


class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7
      ),

      delegate: SliverChildBuilderDelegate((BuildContext context,int index){
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );

      },
        childCount: posts.length,
      ),

    );
  }
}