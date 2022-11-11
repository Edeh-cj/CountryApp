import 'package:hng_countryapp_3/models.dart/country_model.dart';

abstract class Repository {

  Future<List<CountryObject>> getCountryAlbum();
}