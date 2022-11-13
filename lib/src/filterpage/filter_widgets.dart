import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/country_provider.dart';
import '../../providers/filter_provider.dart';

Widget panelradio(BuildContext context, String title, Pattern pattern){
  return ListTile(
    title: Text(title),
    trailing: Radio(
      value: pattern,
      groupValue: Provider.of<FilterNotifier>(context).continentpattern,
      onChanged: (Pattern? value){
        Provider.of<FilterNotifier>(context, listen: false).setcontinentpattern = value;
        Provider.of<CountryNotifier>(context, listen: false).filterlist(value, Provider.of<FilterNotifier>(context, listen: false).timezonepattern);
      }
    ),
  );
  
}

Widget panelradiotimzone(BuildContext context, String title, Pattern pattern){
  return ListTile(
    title: Text(title),
    trailing: Radio(
      value: pattern,
      groupValue: Provider.of<FilterNotifier>(context).timezonepattern,
      onChanged: (Pattern? value){
        Provider.of<FilterNotifier>(context, listen: false).settimezonepattern = value;
        Provider.of<CountryNotifier>(context, listen: false).filterlist(Provider.of<FilterNotifier>(context, listen: false).continentpattern, value);
      }
    ),
  );
  
}

  
     
