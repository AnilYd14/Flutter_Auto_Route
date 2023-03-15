

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Container(child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        ElevatedButton(onPressed: (){
          NaviagtePopToSecond(context);
        }, child: Text('Back To Second Page'))
      ],),),
    );
  }
}

void NaviagtePopToSecond(BuildContext context) {
  context.router.pop();
}
