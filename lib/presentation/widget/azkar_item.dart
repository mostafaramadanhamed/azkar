import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/azkar/azkar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItem extends StatelessWidget {
  const NoteItem.AzkarItem({Key? key, required this.azkar}) : super(key: key);
  final AzkarModel azkar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title:  Text(azkar.title,style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(azkar.num.toString(),style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18,
              ),),
            ),
            trailing: IconButton(onPressed: (){
              azkar.delete();
              ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: 'Note was deleted successfully',color: AppColor.kPrimaryColor2),);
              BlocProvider.of<AzkarCubit>(context).fetchAllAzkar();
            },
              icon:const Icon (Icons.delete,color: Colors.black,size: 25,),),
          ),
        ],
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