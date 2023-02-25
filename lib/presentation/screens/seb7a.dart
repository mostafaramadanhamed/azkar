import 'package:azkar/presentation/widget/add_bottom_sheet.dart';
import 'package:azkar/presentation/widget/azkar_view_body.dart';
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
            return const Directionality(
              textDirection: TextDirection.rtl,
                child: AddNoteBottomSheet()) ;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: const AzkarViewBody(),
    );
  }
}
