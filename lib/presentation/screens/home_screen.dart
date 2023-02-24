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
          top: MediaQuery.of(context).size.height / 10,
          bottom: MediaQuery.of(context).size.height / 70,
          left: MediaQuery.of(context).size.height / 50,
          right: MediaQuery.of(context).size.height / 50,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:
                  buildItem(context, title: AppString.azkarMorning, onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                          child: AzkarMorningScreen()),
                    ));
              }, widget:Image(image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57')),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:
                  buildItem(context, title: AppString.azkarNight, onTap: () {}, widget:Image(image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57')),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(context,
                  title: AppString.azkarDefault, onTap: () {}, widget:Image(image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57')),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildItem(
                context,
                title: AppString.azkark,
                onTap: () {},
                widget: Image(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/hand-drawn-tasbih-illustration_23-2149265392.jpg?w=826&t=st=1677143647~exp=1677144247~hmac=f4c03ce6e56e9a6e4bc288a2beabac3fe13f1dbcd2213ab70bac78219cbdff57')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
