import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
   await Hive.openBox<AzkarModel>(AppString.kBoxName);
  Hive.registerAdapter(AzkarModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Directionality(
        textDirection: TextDirection.rtl,
          child:HomeScreen(),),
    );
  }
}
