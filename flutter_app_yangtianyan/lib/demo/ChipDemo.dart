import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = [
    "苹果",
    "香蕉",
    "柠檬"

  ];

  var _action = "nothing";

  List<String> _selected = [];

  var _choice = "柠檬";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),

          onPressed: (){
          setState(() {
            _tags = ["苹果","香蕉","柠檬"];
            _selected = [];
            _choice = "柠檬";
          });
          }),
      appBar: AppBar(
        title: Text("ChipDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[

                Chip(
                    label: Text("life")
                ),

                Chip(
                  label: Text("sunset"),
                  backgroundColor: Colors.orange,
                ),

                Chip(
                  label: Text("wanghao"),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage("https://pic.52112.com/icon/256/20160907/3133/163739.png"),
                    backgroundColor: Colors.grey,
//                    child: Text("好"),
                  ),
                ),

                Chip(
                  label: Text("wanghao"),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage("https://pic.52112.com/icon/256/20160907/3133/163739.png"),
                    backgroundColor: Colors.grey,
//                    child: Text("好"),
                  ),
                ),

                Chip(
                  label: Text("wanghao"),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage("https://pic.52112.com/icon/256/20160907/3133/163739.png"),
                    backgroundColor: Colors.grey,
//                    child: Text("好"),
                  ),
                ),
                Chip(
                  label: Text("city"),
                  onDeleted: (){

                  },
                  deleteIconColor: Colors.pinkAccent,
                  deleteButtonTooltipMessage: "删除这个标签",
                ),
                Divider(
                  color: Colors.red,
                  height: 32,
                  indent: 32,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){


                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.red,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ActionChip:$_action"),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.red,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("FilterChip:${_selected.toString()}"),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value){
                        setState(() {
                          if (_selected.contains(tag)){
                            _selected.remove(tag);
                          }else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.red,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ChoiceChip:${_choice}"),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.pinkAccent,
                      selected: _choice == tag,
                      onSelected: (value){
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            ),

                
          ],
        ),
      ),
    );
  }
}
