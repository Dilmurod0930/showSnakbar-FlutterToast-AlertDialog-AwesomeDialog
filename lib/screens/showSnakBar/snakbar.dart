import 'package:flutter/material.dart';

class ShowSnackBarPage extends StatelessWidget {
  const ShowSnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('ShowSnackBar Page')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.teal),
            ),
            onTap: () {
              snakBar(context, index);
            },
          );
        },
      ),
    );
  }

  void snakBar(BuildContext context, int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text('$index bosildi'),
        dismissDirection: DismissDirection.horizontal,
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: "Cancel",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
