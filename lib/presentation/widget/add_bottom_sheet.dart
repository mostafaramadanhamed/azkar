import 'package:azkar/presentation/controller/add_azkar/add_azkar_cubit.dart';
import 'package:azkar/presentation/controller/add_azkar/add_azkar_states.dart';
import 'package:azkar/presentation/controller/add_note/add_azkar_cubit.dart';
import 'package:azkar/presentation/controller/add_note/add_azkar_states.dart';
import 'package:azkar/presentation/widget/add_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>AddAzkarCubit(),
      child: BlocConsumer<AddAzkarCubit,AddAzkarStates>(

          listener: ( context, state){
            if(state is AddAzkarIErrorState){
              debugPrint('Error ${state.error}');
            }
            if(state is AddAzkarSuccessState){
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
             // ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: 'Note was added successfully',color: kColors[3]),);
              Navigator.pop(context);
            }
          } ,
          builder: (context,state){
            return AbsorbPointer(
              absorbing: state is AddAzkarLoadingState?true:false,
              child: Padding(
                padding: EdgeInsets.only(
                  left:MediaQuery.of(context).size.height/100,
                  right:MediaQuery.of(context).size.height/100,
                  bottom:MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const SingleChildScrollView(child:  AddAzkarForm()),
              ),
            );
          }
      ),
    );
  }
}
