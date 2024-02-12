import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  State<DemoButtons> createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {

  var _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    print('DemoButtons BUILD called');
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                setState(() {
                  _isUnderstood = false;
                });
              }, child: Text('No')),
              SizedBox(width: 20),
              TextButton(onPressed: (){
                setState(() {
                  _isUnderstood = true;
                });
              }, child: Text('Yes')),
            ],
          ),
          if(_isUnderstood) Text('Awesome!')
        ],
    );
  }
}
