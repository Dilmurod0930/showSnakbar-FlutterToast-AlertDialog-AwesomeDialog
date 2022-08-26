import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastPages extends StatelessWidget {
  const FlutterToastPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("FlutterToast Page")),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.network(
                'https://source.unsplash.com/random',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: ElevatedButton(
                child: const Text("Tasdiqlang"),
                onPressed: () {
                  fluttertoast();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  get fluttertoast {
    return Fluttertoast.showToast(
        msg: "Tasdiqlanishini kuting ",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.teal,
        fontSize: 20.0);
  }
}
