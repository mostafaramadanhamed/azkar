
import 'package:flutter/material.dart';

Container buildITopTitle(BuildContext context,{required String title}) {
  return Container(
    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/20 ,),
    height: MediaQuery.of(context).size.height/10,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(title,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.grey
        ),),
        SizedBox(width: MediaQuery.of(context).size.width/2.6,),
        IconButton(
          padding: EdgeInsets.zero,
            onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_forward_ios)),
      ],
    ),);
}