import 'package:hng_countryapp_3/models.dart/country_model.dart';

class CountriesDTO {
  final List<CountryObject> countryList;

  CountriesDTO({required this.countryList});

  factory CountriesDTO.fromJson(List<dynamic> json) {
    return CountriesDTO(
      countryList: json.map((e) => 
      CountryObject(
        name: e['name']['common'],
        region: e['region'],
        drivingSide: e['car']['side'],
        capital: e['capital']?[0],
        population: e['population'],
        dialingCode: e['idd']['root'] + e['idd']['suffixes'][0],
        timezones: e['timezones'][0],
        coatOfArms: e['coatOfArms']['png'],
        startOfWeek: e['startOfWeek'],
        independent: e['independent'],
        flags: e['flags']['png'],
        government: e['name']['official'],
        area: e['area']

        ), 
      ).toList(),
      
    );
  }
  
}
