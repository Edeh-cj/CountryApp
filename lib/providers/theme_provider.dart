import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier{
  ThemeMode thememode = ThemeMode.light;

  IconData get themeicon{
    if (thememode== ThemeMode.dark){
      return Icons.nightlight_outlined;
    } else if(thememode == ThemeMode.light){
      return Icons.wb_sunny_outlined;
    } else if(thememode == ThemeMode.system){
      return Icons.alt_route;
    } else {
      return Icons.error;
    }
    
  }

  switchthemeMode(){
    if (thememode== ThemeMode.dark){
      thememode = ThemeMode.light;
    } else if(thememode == ThemeMode.light){
      thememode = ThemeMode.system;
    } else if(thememode == ThemeMode.system){
      thememode = ThemeMode.dark;
    } else {
      
    }
    notifyListeners();
  }

}