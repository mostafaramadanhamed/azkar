import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';

Card buildZekrItem(BuildContext context,{
  required String title,
  required int number,
}) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 7.9,
    shadowColor: AppColor.kPrimaryColor.shade300,
    shape: RoundedRectangleBorder(
        side:   BorderSide(color: AppColor.kPrimaryColor.shade300),
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/30)
    ),
    color: AppColor.kPrimaryColor,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(alignment:Alignment.center,color: AppColor.kPrimaryColor,child: Text('$number',
            style: Theme.of(context).textTheme.headline3!.copyWith(
              color: AppColor.kSecondaryColor,
            ),),),
        ),
        SizedBox(width: MediaQuery.of(context).size.width/22,),
        Expanded(flex: 6,child:Text(title,style: Theme.of(context).textTheme.subtitle1!.copyWith(
          color: AppColor.kSecondaryColor,
        ),),),
      ],
    ),
  );
}
