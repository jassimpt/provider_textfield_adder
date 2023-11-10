import 'package:flutter/material.dart';

class Textprovider extends ChangeNotifier {
  TextEditingController text1controller = TextEditingController();
  TextEditingController text2controller = TextEditingController();
  int text = 0;

  textAdder() {
    text = int.parse(text1controller.text) + int.parse(text2controller.text);
    // text = text1controller.text + text2controller.text;
    notifyListeners();
  }
}
