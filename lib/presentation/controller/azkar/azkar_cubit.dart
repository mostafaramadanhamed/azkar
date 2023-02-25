import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:whatsapp/cubit/notes/notes_states.dart';

import '../../data/models/note_model.dart';
import '../../view/constant.dart';

class AzkarCubit extends Cubit<NotesState>{
  AzkarCubit():super(NoteInitialState());
  List<AzkarModel>?azkar=[];
  fetchAllNotes() {
    var notesBox=Hive.box<AzkarModel>(AppString.kBoxName);
    azkar =notesBox.values.toList();
    emit(NoteSuccessState());
  }

}