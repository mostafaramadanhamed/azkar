import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/widget/top_title.dart';
import 'package:flutter/material.dart';

class Seb7aCounter extends StatelessWidget {
  const Seb7aCounter({Key? key, required this.azkar}) : super(key: key);
  final AzkarModel azkar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          buildContainerTitle(context),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_forward_ios,color: AppColor.kPrimaryColor,))
      ],
    );
  }

  Container buildContainerTitle(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/50,
            left: MediaQuery.of(context).size.width/50,
            bottom: MediaQuery.of(context).size.height/50,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14)
          ),
          height: MediaQuery.of(context).size.height/6,
          width: MediaQuery.of(context).size.width,
          child:Text(azkar.title,style: Theme.of(context).textTheme.headline4!.copyWith(
            color: AppColor.kPrimaryColor,
          ),) ,
        );
  }
}
