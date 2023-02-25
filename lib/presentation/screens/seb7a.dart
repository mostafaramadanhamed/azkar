import 'package:azkar/presentation/widget/add_bottom_sheet.dart';
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
            return AddNoteBottomSheet() ;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
