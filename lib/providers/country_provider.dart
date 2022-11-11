import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/get_it.dart';
import 'package:hng_countryapp_3/repository/repo.dart';

import '../models.dart/country_model.dart';


class CountryNotifier with ChangeNotifier {

  CountryListObject countryListObject = CountryListObject(countries: []);
    
  getCountries() async{
    
      countryListObject.countries= await locator<Repository>().getCountryAlbum();      
      // notifyListeners();
      return 'text';   

  }


}