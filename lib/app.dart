import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/models.dart/country_model.dart';
import 'package:hng_countryapp_3/providers/theme_provider.dart';
import 'package:hng_countryapp_3/src/detailspage/detailspage.dart';
import 'package:provider/provider.dart';

import 'src/homepage/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeNotifier>(context).thememode,
      home: const Homepage(),
    );
  }
}

// Detailspage(country: CountryObject(altSpellings: '',capital: '',population: 200356, region: '', flags: null,coatOfArms: null,startOfWeek: '',subregion: '', lat: 2000, lng: 39000, name: 'andulex', timezones: ''))