import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/30),
      ),
      overlayColor: MaterialStateProperty.all(AppColor.kPrimaryColor2),
      onTap:onTap,
      child: Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width/2.3,
        height:MediaQuery.of(context).size.height/15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/22),
          color:AppColor.kPrimaryColor2,
        ),
        child:  isLoading ?const CircularProgressIndicator(color: Colors.black,):
           Text(
               AppString.ad,
               style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}