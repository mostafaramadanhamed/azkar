import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/cubit/add_notes/add_notes_cubit.dart';
import 'package:whatsapp/cubit/add_notes/add_notes_states.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/widget/button.dart';
import 'color_list_view.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subTitle;
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
            subTitle=val;
          },),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          //color
          const ColorListView(),
          //button
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/50,vertical: MediaQuery.of(context).size.height/50),
            child:BlocBuilder<AddNotesCubit,AddNotesStates>(
                builder: (context, state) {
                  return Button(
                    isLoading: state is AddNoteLoadingState?true:false,
                    onTap: (){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        var currentDate = DateTime.now();

                        var formattedCurrentDate =
                        DateFormat.MMMEd().format(currentDate);
                        var noteMode=NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: formattedCurrentDate,
                            color: Colors.orange.value);
                        BlocProvider.of<AddNotesCubit>(context).addNote(noteMode);
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
