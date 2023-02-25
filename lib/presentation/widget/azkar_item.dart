import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/azkar/azkar_cubit.dart';
import 'package:azkar/presentation/screens/seb7a_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({Key? key, required this.azkar}) : super(key: key);
  final AzkarModel azkar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Directionality(
            textDirection: TextDirection.rtl,
              child: Seb7aCounter(azkar: azkar,));
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,

              title:  Text(azkar.title,maxLines:1,overflow:TextOverflow.ellipsis,
                  style:  Theme.of(context).textTheme.headline5!.copyWith(
                color: AppColor.kSecondaryColor,
              )),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(azkar.num.toString(),style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: AppColor.kSecondaryColor,
                ),),
              ),
              trailing: IconButton(onPressed: (){
                azkar.delete();
                ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: AppString.delete,color: AppColor.kPrimaryColor2),);
                BlocProvider.of<AzkarCubit>(context).fetchAllAzkar();
              },
                icon:const Icon (
                  Icons.delete,
                  color: AppColor.kSecondaryColor,
                  size: 25,),),
            ),
          ],
        ),
      ),
    );
  }


}
SnackBar buildSnackBar({required String text,required Color color}) {
  return SnackBar(
    content:  Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black54, width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            spreadRadius: 2.0,
            blurRadius: 8.0,
            offset: Offset(2, 4),
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text,
        style:  const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColor.kPrimaryColor
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    padding:  EdgeInsets.zero,
  );
}