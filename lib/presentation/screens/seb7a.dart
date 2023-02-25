import 'package:azkar/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';

class Seb7aScreen extends StatelessWidget {
  const Seb7aScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              context: context,
              builder: (context){
            return ;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
