import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AwesoneDialogPage extends StatelessWidget {
  const AwesoneDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: const Text('AwesoneDialog Page')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              decoration: BoxDecoration(
                color:  Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onTap: () {
              awesomeDialog(context, index);
            },
          );
          
        },
        itemCount: 10,
      ),
    );
  }

  awesomeDialog(context, index) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      title: "Qabul Qilindi",
      desc: "Qabul Qilinganingizni Tasdiqlanishiini Kuting",
      btnCancel: ElevatedButton(child: const Text("Cancel"), onPressed: () {}),
      btnOk: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: const Text("Ok"),
          onPressed: () {}),
    )..show();
  }
}
