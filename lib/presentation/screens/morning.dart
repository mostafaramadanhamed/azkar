import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/presentation/widget/zekr_item.dart';
import 'package:azkar/presentation/widget/top_title.dart';
import 'package:flutter/material.dart';

class AzkarMorningScreen extends StatelessWidget {
  const AzkarMorningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildITopTitle(context,title: AppString.azkarMorning),

         buildZekrItem(context, title: AzkarString.ayatElkorsi,
            number: 1,)
        ],
      ),
    );
  }

}
