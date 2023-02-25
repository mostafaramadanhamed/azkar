import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/azkar/azkar_cubit.dart';
import 'package:azkar/presentation/controller/azkar/azkar_states.dart';
import 'package:azkar/presentation/widget/azkar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AzkarListview  extends StatelessWidget {
  const AzkarListview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit,AzkarState>(
        builder: (context, state) {
          List<AzkarModel>azkar=BlocProvider.of<AzkarCubit>(context).azkar!;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0),
            child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              itemCount: azkar.length,
              padding: EdgeInsets.zero,
              itemBuilder:(context,index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: AzkarItem(
                    azkar:azkar[index],
                  ),
                );
              } ,
            ),
          );
        }
    );
  }
}