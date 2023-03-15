
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_navigation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {

   InitialPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Page",
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {
             navigateToSecondPage(context);
            }, child: const Text('Go To Second')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              navigateToThirdPage(context);
            }, child: Text('Go To Third'))
          ],
        ),
      ),
    );
  }


  void navigateToThirdPage(BuildContext context) async {
    var result = await context.router.push<String>(
        ThirdRoute(userName: 'Anil', phoneNumber: '7503514142'));
    debugPrint(result);
    if (result != null) {
    }
  }

  void navigateToSecondPage(BuildContext context) {
    context.router.push(SecondRoute());
  }
}
