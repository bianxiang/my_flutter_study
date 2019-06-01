import 'package:flutter/material.dart';
import '../model/post.dart';
class ViewDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }


}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent (
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Widget> _buildTiles(int length){
      return List.generate(length, (int index){
        return Container(
          color: Colors.grey,
          alignment: Alignment(0, 0),
          child: Text("item$index",style: TextStyle(fontSize: 18.0,color: Colors.blue),
          ),

        );
      });
    }
    // TODO: implement build
    return GridView.extent(
      scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 300,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Widget> _buildTiles(int length){
      return List.generate(length, (int index){
        return Container(
          color: Colors.grey,
          alignment: Alignment(0, 0),
          child: Text("item$index",style: TextStyle(fontSize: 18.0,color: Colors.blue),
          ),

        );
      });
    }
    // TODO: implement build
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 4,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl,
              fit:BoxFit.cover
          ),

        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],

    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(itemCount:posts.length,
      itemBuilder: _pageItemBuilder,

    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.85,
      ),
      onPageChanged: (index){
        debugPrint("当前页面$index");
      },
//      scrollDirection: Axis.horizontal,
//      pageSnapping: true,
//      reverse: false,
      children: <Widget>[
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0, 0),
          child: Text("11",
            style: TextStyle(fontSize: 32.0,color: Colors.white),

          ),
        ),
        Container(
          color: Colors.brown[500],
          alignment: Alignment(0, 0),
          child: Text("22",
            style: TextStyle(fontSize: 32.0,color: Colors.white),

          ),
        ),
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0, 0),
          child: Text("33",
            style: TextStyle(fontSize: 32.0,color: Colors.white),

          ),
        ),
      ],
    );
  }
}