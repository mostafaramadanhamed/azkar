import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width/2.3,
      height:MediaQuery.of(context).size.width/11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color:AppColor.kPrimaryColor2,
      ),
      child:  InkWell(
        //borderRadius: BorderRadius.circular(14),
          onTap:onTap,
          child:  isLoading ?const CircularProgressIndicator(color: Colors.black,):
          Center(child:  Text('Add',style: TextStyle(
              color: AppColor.kPrimaryColor1,
              fontWeight: FontWeight.w600,
              fontSize: 17
          ),),)),);
  }
}