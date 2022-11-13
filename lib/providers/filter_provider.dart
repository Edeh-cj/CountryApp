import 'package:flutter/cupertino.dart';

class FilterNotifier extends ChangeNotifier{
  Pattern? _continent = RegExp(r'.*');
  Pattern? _timezone = RegExp(r'.*');

  set setcontinentpattern(Pattern? pattern) {
    _continent = pattern;
    notifyListeners();
    }
    
  set settimezonepattern(Pattern? pattern){
    _timezone = pattern;
    notifyListeners();
  }

  Pattern? get continentpattern => _continent;
  Pattern? get timezonepattern => _timezone;
}
