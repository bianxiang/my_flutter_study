import 'package:flutter/material.dart';
import 'package:flutter_app_yangtianyan/demo/AlertDialogDemo.dart';
import 'package:flutter_app_yangtianyan/demo/BottomSheetDemo.dart';
import 'package:flutter_app_yangtianyan/demo/ChipDemo.dart';
import 'package:flutter_app_yangtianyan/demo/PaginatedDataTableDemo.dart';
import 'package:flutter_app_yangtianyan/demo/DataTableDemo.dart';
import 'package:flutter_app_yangtianyan/demo/DateTime.dart';
import 'package:flutter_app_yangtianyan/demo/ExpansionPanelDemo.dart';
import 'package:flutter_app_yangtianyan/demo/RadioDemo.dart';
import 'package:flutter_app_yangtianyan/demo/SimpleDialogDemo.dart';
import 'package:flutter_app_yangtianyan/demo/SliderDemo.dart';
import 'package:flutter_app_yangtianyan/demo/SnackBarButton.dart';
import 'package:flutter_app_yangtianyan/demo/StepperDemo.dart';
import 'package:flutter_app_yangtianyan/demo/SwitchDemo.dart';
import '../demo/button_demo.dart';
import '../demo/floating_action_button_demo.dart';
import '../demo/popup_menu_button_demo.dart';
import '../demo/form_demo.dart';
import '../demo/checkbox_demo.dart';
import '../demo/CardDemo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialComponents"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[


          ListItem(title: "StepperDemo",page: StepperDemo()),
          ListItem(title: "CardDemo",page: CardDemo()),
          ListItem(title: "PaginatedDataTableDemo",page: PaginatedDataTableDemo()),
          ListItem(title: "DataTableDemo",page: DataTableDemo()),
          ListItem(title: "ChipDemo",page: ChipDemo()),
          ListItem(title: "ExpansionPanelDemo",page: ExpansionPanelDemo()),
          ListItem(title: "SnackBarDemo",page: SnackBarDemo()),
          ListItem(title: "BottomSheetDemo",page: BottomSheetDemo()),
          ListItem(title: "AlertDialogDemo",page: AlertDialogDemo()),
          ListItem(title: "SimpleDialogDemo",page: SimpleDialogDemo()),
          ListItem(title: "DateTimeDemo",page: DateTimeDemo()),
          ListItem(title: "SliderDemo",page: SliderDemo()),
          ListItem(title: "SwitchDemo",page: SwitchDemo()),
          ListItem(title: "radioDemo",page: RadioDemo()),
          ListItem(title: "checkbox",page: CheckboxDemo()),
          ListItem(title: "form",page: FormDemo(),),
          ListItem(title: "popupmenubutton",page: PopupMenuButtonDemo(),),
          ListItem(title: "Button",page: ButtonDemo(),),
          ListItem(title: "floatingactionbutton",page: FloatingActionButtonDemo(),)
        ],
      ),
    );
  }
}



class _WidgetDemo extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


              ],
            )
          ],
        ),
      ),
    );
  }
}






class ListItem extends StatelessWidget {
  String title;
  Widget page;

  ListItem({
    this.title,
    this.page
});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page)
        );
      },
    );
  }
}
