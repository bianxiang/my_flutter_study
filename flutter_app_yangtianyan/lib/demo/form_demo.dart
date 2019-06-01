import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemo"),
        elevation: 0.0,
        
      ),
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterForm(),
              ],
            ),
          )

      ),

    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();

  String username,password;

  bool autovalidate = false;

  submitRegisterForm(){
    if (registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint("用户名：$username 密码：$password");

      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("正在注册..."))
      );
    }else {
      setState(() {
        autovalidate = true;
      });
    }



  }

  String validatorUsername(value){
    if (value.isEmpty) {
      return "用户名为空";
    }

    return null;
  }

  String validatorPassword(value){
    if (value.isEmpty) {
      return "密码为空";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            autovalidate: autovalidate,
            validator: validatorUsername,
            onSaved: (value){
              username = value;
            },
            decoration: InputDecoration(
              labelText: "用户名",
//              helperText: ""
            ),
          ),

          TextFormField(
            autovalidate: autovalidate,
            validator: validatorPassword,
            onSaved: (value){
              password = value;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: "密码",
//              helperText: "",
            ),
          ),
          SizedBox(height: 32,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("Register",style: TextStyle(color: Colors.white),),
              elevation: 0.0,
              onPressed: (){
                submitRegisterForm();
              },
            ),
          )
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text = "文本框的初始值";
    textEditingController.addListener((){
      debugPrint("输入框内容为：${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value){
//        debugPrint("文本框内容变化为：$value");
//      },
//      onSubmitted: (value){
//        debugPrint("输入结束了：$value");
//      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "title",
        hintText: "提示文字",
        border: OutlineInputBorder(),
        filled: true,

      ),
    );
  }
}




class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,

    );
  }
}
