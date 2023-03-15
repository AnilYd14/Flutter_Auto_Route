
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  final String userName;
  final String phoneNumber;
  const ThirdPage(this.userName, this.phoneNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Third Page'),),
        body: Container(alignment: Alignment.center,child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text(userName),
          SizedBox(height: 20,),
          Text(phoneNumber),
          SizedBox(height: 60,),
          ElevatedButton(onPressed: (){
            context.router.pop('End With Result');

          }, child: Text('Send Result Back'))
        ],)),
      ),
    );
    
  }
}
