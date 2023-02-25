import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit,AddNotesStates>(

          listener: ( context, state){
            if(state is AddNoteIErrorState){
              debugPrint('Error ${state.error}');
            }
            if(state is AddNoteSuccessState){
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: 'Note was added successfully',color: kColors[3]),);
              Navigator.pop(context);
            }
          } ,
          builder: (context,state){
            return AbsorbPointer(
              absorbing: state is AddNoteLoadingState?true:false,
              child: Padding(
                padding: EdgeInsets.only(
                  left:MediaQuery.of(context).size.height/100,
                  right:MediaQuery.of(context).size.height/100,
                  bottom:MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const SingleChildScrollView(child:  AddNoteForm()),
              ),
            );
          }
      ),
    );
  }
}
