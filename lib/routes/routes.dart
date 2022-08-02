import 'package:flutter/material.dart';
import 'package:show_my_diologlar/screens/alertDialog/alerdt_dialog.dart';
import 'package:show_my_diologlar/screens/awesone_dialog/awesone-dialog.dart';
import 'package:show_my_diologlar/screens/fluttertoast/fluttertoast.dart';
import 'package:show_my_diologlar/screens/showSnakBar/snakbar.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();
  Route? onGenereteRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/snakBar":
        return MaterialPageRoute(builder: (context) => ShowSnackBarPage());
      case "/awesone_dialog":
        return MaterialPageRoute(builder: (context) => AwesoneDialogPage());
      case "/alert_dialog":
        return MaterialPageRoute(builder: (context) => AlertDialogPage());
      case "/flutter_toats":
        return MaterialPageRoute(builder: (context) => FlutterToastPages());
    }
  }
}
