import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:flutter/material.dart';

class Seb7aCounter extends StatefulWidget {
  const Seb7aCounter({Key? key, required this.azkar}) : super(key: key);
  final AzkarModel azkar;

  @override
  State<Seb7aCounter> createState() => _Seb7aCounterState();
}

class _Seb7aCounterState extends State<Seb7aCounter> {
  int number=0;
  int counter=0;
  int da=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          buildContainerTitle(context),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height/20),
            child: Row(
              children: [
                Text(AppString.counter ,style: Theme.of(context).textTheme.headline5!.copyWith(
              color: AppColor.kPrimaryColor,
            ),),
                const Spacer(),
                Text(AppString.dawra,style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: AppColor.kPrimaryColor,
                ),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height/13),
            child: Row(
              children: [
                Text('${counter}' ,style: Theme.of(context).textTheme.headline6!.copyWith(
              color: AppColor.kPrimaryColor,
            ),),
                const Spacer(),
                Text('$da',style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColor.kPrimaryColor,
                ),),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          InkWell(
           customBorder: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/8.6),

           ),
            overlayColor: MaterialStateProperty.all(AppColor.kPrimaryColor2),
            onTap: (){
             ++counter;
             ++number;
              if(number==widget.azkar.num){
                number=0;
                ++da;
              }
              setState((){});
            },
            child: CircleAvatar(
              backgroundColor: AppColor.kPrimaryColor2,
              foregroundColor: AppColor.kPrimaryColor,
              radius: MediaQuery.of(context).size.height/8,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height/8.7,
                backgroundColor: AppColor.kSecondaryColor,
                child: Text(number.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: AppColor.kPrimaryColor
                ),),
              ),
            ),
          ),
          const Spacer(flex: 1,),
         GestureDetector(
           onTap: (){
             number=0;
             counter=0;
             da=0;
             setState((){});
           },
           child: CircleAvatar(
             radius: MediaQuery.of(context).size.width/14,
             backgroundColor: AppColor.kPrimaryColor2,
             child: Icon(Icons.restart_alt, color: AppColor.kPrimaryColor,),
           ),
         ),
          const Spacer(flex: 5,),
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
        }, icon:const Icon(Icons.arrow_forward_ios,color: AppColor.kPrimaryColor,))
      ],
    );
  }

  Container buildContainerTitle(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/50,
            left: MediaQuery.of(context).size.width/50,
           // bottom: MediaQuery.of(context).size.height/50,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14)
          ),
          height: MediaQuery.of(context).size.height/6,
          width: MediaQuery.of(context).size.width,
          child:Text(widget.azkar.title,style: Theme.of(context).textTheme.headline4!.copyWith(
            color: AppColor.kPrimaryColor,
          ),) ,
        );
  }
}
