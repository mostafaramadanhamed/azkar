import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/add_note/add_azkar_cubit.dart';
import 'package:azkar/presentation/controller/add_note/add_azkar_states.dart';
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
            child: CustomTextFiled( hint: 'Title',onSaved: (val){
              title=val;
            },),
          ),
          CustomTextFiled(hint: 'Details',maxLines: 5,onSaved: (val){
            number=val as int?;
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
                            num: number!.toInt(),
                            );
                        BlocProvider.of<AddAzkarCubit>(context).addAzkar(azkarModel);
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
