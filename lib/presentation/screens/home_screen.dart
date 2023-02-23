import 'package:azkar/core/app_constant/app_strings.dart';
import 'package:azkar/presentation/widget/item.dart';
import 'package:azkar/presentation/screens/morning.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .size
              .height / 10,
          bottom: MediaQuery
              .of(context)
              .size
              .height / 70,
          left: MediaQuery
              .of(context)
              .size
              .height / 50,
          right: MediaQuery
              .of(context)
              .size
              .height / 50,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(
                  context, title: AppString.azkarMorning, onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AzkarMorningScreen(),));
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(
                  context, title: AppString.azkarNight, onTap: () {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(
                  context, title: AppString.azkarDefault, onTap: () {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context, title: AppString.azkark, onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }

}
