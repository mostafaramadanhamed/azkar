import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/presentation/controller/azkar/azkar_cubit.dart';
import 'package:azkar/presentation/widget/azkar_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AzkarViewBody extends StatefulWidget {
  const AzkarViewBody({Key? key}) : super(key: key);

  @override
  State<AzkarViewBody> createState() => _AzkarViewBodyState();
}

class _AzkarViewBodyState extends State<AzkarViewBody> {
  @override
  void initState(){
    BlocProvider.of<AzkarCubit>(context).fetchAllAzkar();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
          const Text(AppString.azkark,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                      color: Color(0x19000000),
                      blurRadius: 10.0,
                      offset: Offset(2,4)
                  ),
                ]
            ),) ,
          const Expanded(
              child:  AzkarListview()),
        ],
      ),
    );
  }
}