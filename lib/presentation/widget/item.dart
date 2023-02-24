import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';

InkWell buildItem(BuildContext context,{
  void Function()? onTap,
  required String title,
  required Widget widget,
}) {
  return InkWell(
    borderRadius: BorderRadius.circular( MediaQuery.of(context).size.width/12),
    highlightColor: AppColor.kPrimaryColor.shade100,
    onTap: onTap,
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 7.9,
      shadowColor: AppColor.kPrimaryColor.shade300,
      shape: RoundedRectangleBorder(
          side:   BorderSide(color: AppColor.kPrimaryColor.shade300),
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/12)
      ),
      color: AppColor.kPrimaryColor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: widget,
          ),
          SizedBox(width: MediaQuery.of(context).size.width/22,),
          Expanded(flex: 2,child:Text(title,style: Theme.of(context).textTheme.headline5!.copyWith(
            color:AppColor.kSecondaryColor,
          ),),),
        ],
      ),
    ),
  );
}
