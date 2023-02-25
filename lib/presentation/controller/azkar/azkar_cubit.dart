import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/azkar/azkar_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';


class AzkarCubit extends Cubit<AzkarState>{
  AzkarCubit():super(AzkarInitialState());
  List<AzkarModel>?azkar=[];
  fetchAllAzkar() {
    var azkarBox=Hive.box<AzkarModel>(AppString.kBoxName);
    azkar =azkarBox.values.toList();
    emit(AzkarSuccessState());
  }

}