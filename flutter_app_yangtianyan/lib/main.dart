import 'package:flutter/material.dart';
import 'package:flutter_app_yangtianyan/demo/BottomNavigationBarDemo.dart';
import 'package:flutter_app_yangtianyan/demo/ViewDemo.dart';
import 'package:flutter_app_yangtianyan/demo/animation/animation_demo.dart';
import 'package:flutter_app_yangtianyan/demo/bloc/bloc_demo.dart';
import 'package:flutter_app_yangtianyan/demo/drawer_demo.dart';
import 'package:flutter_app_yangtianyan/demo/basic_demo.dart';
import 'package:flutter_app_yangtianyan/demo/http/http_demo.dart';
import 'package:flutter_app_yangtianyan/demo/listView-demo.dart';
import 'package:flutter_app_yangtianyan/demo/rxdart/rxdart_demo.dart';
import 'package:flutter_app_yangtianyan/demo/state/state_management_demo.dart';
import 'package:flutter_app_yangtianyan/demo/stream/stream_dart.dart';
import 'package:flutter_app_yangtianyan/demo/i18n/i18n_demo.dart';
import 'package:flutter_app_yangtianyan/model/post.dart';
import 'package:flutter_app_yangtianyan/demo/layout_demo.dart';
import 'package:flutter_app_yangtianyan/demo/sliver_demo.dart';
import 'package:flutter_app_yangtianyan/demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_app_yangtianyan/demo/i18n/map/ninghao_demo_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
//      localeResolutionCallback: (Locale locale,Iterable<Locale> supportedLocales){
//        return Locale("en","US");
//      },
//      locale: Locale("en","US"),
      locale: Locale("zh","CN"),
      localizationsDelegates: [
        NinghaoDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
      supportedLocales: [

        Locale("en","US"),
        Locale("zh","CN"),


      ],
      initialRoute: "/i18n",
      routes: {
        "/":(context) => Home(),
        "/about":(context)=> Page(title: "about"),
        "/form":(context) => FormDemo(),
        "/mdc":(context) => MaterialComponents(),
        "/state-management":(context) => StateManagermentDemo(),
        "/stream":(context) => StreamDemo(),
        "/rxdart":(context) => RxDartDemo(),
        "/bloc":(context) => BlocDemo(),
        "/http":(context) => HttpDemo(),
        "/animation":(context) => AnimationDemo(),
        "/i18n":(context) => I18nDemo(),



      },
      debugShowCheckedModeBanner: true,
      title: '测试杨',
      theme: ThemeData(
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        primarySwatch: Colors.deepPurple,
        splashColor: Colors.white70,
        accentColor: Colors.blueAccent,
      ),
//      home:
//      Home(),
//      SliverDemo(),
//        NavigatorDemo(),
    );
  }
}

class Home extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//              tooltip: "navigation",
//              icon: Icon(Icons.menu),
//              onPressed: (){
//                debugPrint("导航被点击");
//              }
//          ),
          title: Text("test"),
          actions: <Widget>[
            IconButton(
                tooltip: "navigation",
                icon: Icon(Icons.search),
                onPressed: (){
                  debugPrint("搜索被点击");
                }
            )
          ],
          elevation: 0.0,
          bottom: TabBar(unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1,
              tabs: [
            Tab(icon: Icon(Icons.local_activity),),
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.change_history),),
            Tab(icon: Icon(Icons.view_quilt),),

          ]),
        ),
        body: TabBarView(
            children:[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
          ]
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );


  }


}
