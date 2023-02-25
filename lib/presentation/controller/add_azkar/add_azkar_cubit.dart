import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/add_note/add_azkar_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';


class AddAzkarCubit extends Cubit<AddAzkarStates>{

  AddAzkarCubit() : super(AddAzkarInitialState());
  addAzkar(AzkarModel azkar)async{
    emit(AddAzkarLoadingState());
    try{
      var notesBox=Hive.box<AzkarModel>(AppString.kBoxName);
      await notesBox.add(azkar);
      emit(AddAzkarSuccessState());
    }
    catch(ex){
      emit(AddAzkarIErrorState(ex.toString()));
    }
  }



}