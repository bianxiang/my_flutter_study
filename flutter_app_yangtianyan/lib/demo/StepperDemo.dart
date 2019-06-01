import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {

  var _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StepperDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                  primaryColor: Colors.black
              ),
              child: Stepper(
                onStepTapped: ( value){
                  setState(() {
                    _currentStep = value;
                  });
                },
                  onStepContinue: (){
                     setState(() {
                        _currentStep <2 ? _currentStep +=1 : _currentStep = 0;
                     });
                  },
                  onStepCancel: (){
                      setState(() {
                        _currentStep >0 ? _currentStep -=1 : _currentStep = 0;
                      });
                  },
                currentStep: _currentStep,
                  steps: [
                    Step(title: Text("login"),
                      subtitle: Text("Login First"),
                      content: Text("1fdjfelkgjelfgjegfnekjflefgjhjgjr;wgerjhjer ejwjfejrwlhkjfkgbehrwh"),
                      isActive: _currentStep == 0,

                    ),
                    Step(title: Text("choose plan"),
                      subtitle: Text("choose your plan"),
                      content: Text("2djfelkgjelfgjegfnekjflefgjhjgjr;wgerjhjer ejwjfejrwlhkjfkgbehrwh"),
                      isActive: _currentStep == 1,
                    ),
                    Step(title: Text("confirm payment"),
                      subtitle: Text("confirm payment method"),
                      content: Text("3fdjfelkgjelfgjegfnekjflefgjhjgjr;wgerjhjer ejwjfejrwlhkjfkgbehrwh"),
                      isActive: _currentStep == 2,
                    ),

                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
