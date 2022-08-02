import 'package:flutter/material.dart';
import 'package:show_my_diologlar/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snak Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: MyRoutes.instanse.onGenereteRoute,
      initialRoute: "/flutter_toats",
    );
  }
}
