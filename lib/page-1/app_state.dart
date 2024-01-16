import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends ChangeNotifier {
  bool showText1 = false;
  bool showText2 = true;
  bool showText3 = false;

  AppState() {
    _loadState();
  }

  Future<void> _loadState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    showText1 = prefs.getBool('showText1') ?? false;
    showText2 = prefs.getBool('showText2') ?? false;
    showText3 = prefs.getBool('showText3') ?? false;
    notifyListeners();
  }

  Future<void> _saveState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('showText1', showText1);
    prefs.setBool('showText2', showText2);
    prefs.setBool('showText3', showText3);
  }

  void updateShowText(int containerIndex) {
    switch (containerIndex) {
      case 1:
        showText1 = true;
        showText2 = false;
        showText3 = false;
        break;
      case 2:
        showText1 = false;
        showText2 = true;
        showText3 = false;
        break;
      case 3:
        showText1 = false;
        showText2 = false;
        showText3 = true;
        break;
    }
    _saveState();
    notifyListeners();
  }
}
