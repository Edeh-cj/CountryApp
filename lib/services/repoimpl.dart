import 'dart:convert';
import 'package:hng_countryapp_3/models.dart/country_model.dart';
import 'package:http/http.dart' as http;

import '../repository/repo.dart';
import 'countries_dto.dart';

class RepositoryImpl implements Repository{

  @override
  Future<List<CountryObject>> getCountryAlbum() async{
    
    final response = await http
      .get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {    
      return CountriesDTO.fromJson(jsonDecode(response.body)).countryList;

    } else {    
      throw Exception('Failed to load album');
    }
  }


}
  