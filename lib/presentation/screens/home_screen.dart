import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width/25,
            vertical: MediaQuery.of(context).size.height/25),
        child: Column(

          children: [

            Row(
              children:  [

              ],
            )
          ],
        ),
      ),
    );
  }
}
Widget abc() {
 return Expanded(
     child: Container(
       alignment: Alignment.center,
         child: Text('data',),
     ),);
}