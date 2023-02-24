
import 'package:flutter/material.dart';

Container buildITopTitle(BuildContext context,{required String title}) {
  return Container(
    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/20 ,),
    height: MediaQuery.of(context).size.height/10,child: Text(title,
    style: Theme.of(context).textTheme.headline4!.copyWith(
        color: Colors.grey
    ),),);
}