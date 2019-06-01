import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("卞翔",style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text("bian15216629448@163.com",style: TextStyle(fontWeight: FontWeight.bold),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://upload.jianshu.io/users/upload_avatars/9303971/c7626310-08ef-409d-a1a3-efb11f9d6ca7.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96"),
            ),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                image: DecorationImage(image: NetworkImage("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1996499788,3346940487&fm=27&gp=0.jpg"),
                    fit:BoxFit.cover,
                    colorFilter:ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight)
                )
            ),
          ),
          ListTile(
            title: Text("消息",textAlign: TextAlign.right,),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("收藏",textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite,color: Colors.black12,size: 22,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("设置",textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings,color: Colors.black12,size: 22,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
