import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_countryapp_3/models.dart/country_model.dart';
import 'package:hng_countryapp_3/src/homepage/homeWidgets.dart';

class MySearchDelegate extends SearchDelegate<String>{
  final BuildContext providercontext;
  final CountryListObject countrylistobject;

  MySearchDelegate({required this.providercontext, required this.countrylistobject});
  
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton (
      icon: const Icon(Icons.arrow_back), 
      onPressed: (){
        Navigator.pop(context);
        
      },);
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView();
  }
  
    @override
 Widget buildSuggestions(BuildContext context) {  
  List<CountryObject> suggestionList_= query.isEmpty? [] : 
       countrylistobject.countries.where((e) => e.name.toLowerCase().contains(query)).toList() ;
    
    if (query.isEmpty){
      return const Align();
    }else {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) { 
          return countrytile(suggestionList_[index], context);
         },
      );
    }
    
  }


}