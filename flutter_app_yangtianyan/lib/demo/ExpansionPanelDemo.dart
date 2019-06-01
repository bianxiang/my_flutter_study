import 'package:flutter/material.dart';

class ExpansionPanelItem{
  final String headerText ;
  final Widget body;
  bool isExpanded = false;

  ExpansionPanelItem({
      this.headerText,
      this.body,
      this.isExpanded
  });


}


class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {



  List<ExpansionPanelItem> _expandPanelItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expandPanelItems = <ExpansionPanelItem>[

      ExpansionPanelItem(
        headerText: "Panel A",
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text("Content for panel A"),

        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: "Panel B",
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for panel B"),

          ),
          isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: "Panel C",
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for panel C"),

          ),
          isExpanded: false
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int pannelIndex,bool isExpand){
                setState(() {
                  _expandPanelItems[pannelIndex].isExpanded = !isExpand;
                });
              },
              children:_expandPanelItems.map(
                      (ExpansionPanelItem item){
                        return ExpansionPanel(
                          isExpanded: item.isExpanded,
                          body: item.body,
                          headerBuilder: (BuildContext context,bool isExpand){
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Text(item.headerText,style: Theme.of(context).textTheme.title,),
                            );
                          }
                        );
              }
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
