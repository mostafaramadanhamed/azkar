import 'package:azkar/core/app_constant/app_colors.dart';
import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/data/models/azkar_model.dart';
import 'package:azkar/presentation/controller/azkar/azkar_cubit.dart';
import 'package:azkar/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AzkarModelAdapter());
  await Hive.openBox<AzkarModel>(AppString.kBoxName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'AmiriQuran',
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: AppColor.kPrimaryColor,
            )
        ),
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: const HomeScreen(),),
      ),
    );
  }
}
