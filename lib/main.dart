import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/providers/country_provider.dart';
import 'package:hng_countryapp_3/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'get_it.dart';
import 'providers/filter_provider.dart';

void main() {
  initLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountryNotifier()), 
        ChangeNotifierProvider(create: (context) => FilterNotifier()),     
        ChangeNotifierProvider(create: (context) => ThemeNotifier())
      ], 
      child: MyApp(),
      )
  );
}
