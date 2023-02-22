import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width/25,
            vertical: MediaQuery.of(context).size.height/25,
        ),
        child: Column(

          children: [
            Row(
              children: [
                Expanded(child: abc(context, title: 'title')),
                Expanded(child: abc(context, title: 'title')),
                Expanded(child: abc(context, title: 'title')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
Widget abc(context,{
  required String title,
}) {
 return
  Padding(
    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/50 ),
    child: TextButton(child: Text(title,),onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.cyanAccent)
                )
            )

        ),
      ),
  );
}