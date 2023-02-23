import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(
          top: MediaQuery.of(context).size.height/15,
          bottom: MediaQuery.of(context).size.height/70,
          left: MediaQuery.of(context).size.height/50,
          right: MediaQuery.of(context).size.height/50,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          physics:const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context,title: AppString.azkarMorning,onTap: (){}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context,title: AppString.azkarNight,onTap: (){}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context,title: AppString.azkarDefault,onTap: (){}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context,title: AppString.azkark,onTap: (){}),
            ),
          ],
        ),
      ),
    );
  }

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
}
/*
  InkWell(
             child: Container(
               height: 100,
               margin: EdgeInsets.all(8),
               padding: EdgeInsets.only(top: 8,bottom: 8,left: 0),
               width: MediaQuery.of(context).size.width,
               clipBehavior: Clip.antiAliasWithSaveLayer,
               alignment: Alignment.topCenter,
               decoration: BoxDecoration(
                 shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(14),
                 image: DecorationImage(
                   invertColors: true,
                   isAntiAlias: true,
                   alignment: Alignment.topRight,
                     image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57'))
               ),
               child: Text('gg'),
             ),
           )
* */