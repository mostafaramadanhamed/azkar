import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';

InkWell buildItem(BuildContext context,{
  void Function()? onTap,
  required String title,
}) {
  return InkWell(
    borderRadius: BorderRadius.circular( MediaQuery.of(context).size.width/12),
    highlightColor: AppColor.itemColor.shade100,
    onTap: onTap,
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 7.9,
      shadowColor: AppColor.itemColor.shade300,
      shape: RoundedRectangleBorder(
          side:   BorderSide(color: AppColor.itemColor.shade300),
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/12)
      ),
      color: AppColor.itemColor,
      child: Row(
        children: [
          Expanded(
            child: Image(image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57')),
            flex: 1,
          ),
          SizedBox(width: MediaQuery.of(context).size.width/22,),
          Expanded(flex: 2,child:Text(title,style: Theme.of(context).textTheme.headline5!.copyWith(
            color: Colors.white,
          ),),),
        ],
      ),
    ),
  );
}
