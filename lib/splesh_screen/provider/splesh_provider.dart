import 'package:flutter/cupertino.dart';
import 'package:food_delivary_app/screen/view/home_screen.dart';
import 'package:food_delivary_app/sd.dart';
import 'package:food_delivary_app/wd.dart';

class SpleshProvider extends ChangeNotifier {
  int i = 0;
  List screenList = [
    HomeScreen(),
    SSS(),
    A(),
  ];

  void changeScreen(int value) {
    i = value;
    notifyListeners();
  }
}
