import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget buildZekrItem(BuildContext context,{
  required String title,
  required String  subTitle,
  required int number,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5.0),
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 7.9,
      shadowColor: AppColor.kPrimaryColor1,
      shape: RoundedRectangleBorder(
          side:   BorderSide(color: AppColor.kPrimaryColor1),
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/30)
      ),
      color: AppColor.kPrimaryColor1,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(alignment:Alignment.center,color: AppColor.kPrimaryColor,child: Text('$number',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                color: AppColor.kSecondaryColor,
              ),),),
          ),
          SizedBox(width: MediaQuery.of(context).size.width/22,),
          Expanded(flex: 6,child:Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColor.kSecondaryColor,
              ),),
              Text(subTitle,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: AppColor.kSubTitleColor.shade300,),
              ),
            ],
          ),),
        ],
      ),
    ),
  );
}
