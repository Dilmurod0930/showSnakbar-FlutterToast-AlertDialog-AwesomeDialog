import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Alert Dialog Page")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.red),
            ),
            onTap: () {
              alertDialog(context, index);
            },
          );
        },
      ),
    );
  }

  alertDialog(context, index) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          '$index indeterminate_check_box bosildi',
          style: const TextStyle(color: Colors.teal),
        ),
        content: const Text("Content... "),
        backgroundColor: Colors.yellow,
        actions: [
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: const Text('Cencel'))
        ],
      ),
    );
  }
}
