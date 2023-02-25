import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/add_azkar/add_azkar_cubit.dart';
import 'package:azkar/presentation/controller/add_azkar/add_azkar_states.dart';
import 'package:azkar/presentation/widget/azkar_item.dart';
import 'package:azkar/presentation/widget/button.dart';
import 'package:azkar/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AddAzkarForm extends StatefulWidget {
  const AddAzkarForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddAzkarForm> createState() => _AddAzkarFormState();
}

class _AddAzkarFormState extends State<AddAzkarForm> {
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title;
  int ? number;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/50),
            child: CustomTextFiled( hint: AppString.azkar,onSaved: (val){
              title=val;
            },),
          ),
          CustomTextFiled(hint: AppString.azkarNum,keyboardType:TextInputType.number,onSaved: (val){
            number=int.parse(val!);
          },),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          //button
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/50,vertical: MediaQuery.of(context).size.height/50),
            child:BlocBuilder<AddAzkarCubit,AddAzkarStates>(
                builder: (context, state) {
                  return Button(
                    isLoading: state is AddAzkarLoadingState?true:false,
                    onTap: (){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        var azkarModel=AzkarModel(
                            title: title!,
                            num: number!,
                            );
                        BlocProvider.of<AddAzkarCubit>(context).addAzkar(azkarModel);
                        ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: AppString.add,color: AppColor.kPrimaryColor2),);
                      }
                      else{
                        autovalidateMode=AutovalidateMode.always;
                        setState((){});
                      }
                    },
                  );
                }
            ) ,
          ),
        ],
      ),
    );
  }
}
