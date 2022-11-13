import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/models.dart/country_model.dart';

Widget countryData(CountryObject country, BuildContext context, Size size){
  return SizedBox(
    height: 450,
    width: size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textData('Population', context, country.population.toString()),
            textData('Region', context, country.region),
            textData('Capital', context, country.capital??''),
            textData('Motto', context, country.motto),
            const SizedBox(height: 20,),
            textData('Official language', context, country.language),
            textData('Ethnic group', context, country.ethnicgroups),
            textData('Religion', context, country.religion),
            textData('Government', context, country.government),
            const SizedBox(height: 10,),
            textData('Independence', context, country.independent.toString()),
            textData('Area', context, country.area.toString()),
            textData('Currency', context, country.currency),
            textData('GDP', context, country.gdp),
            const SizedBox(height: 10,),
            textData('Time zone', context, country.timezones.toString()),
            textData('Date format', context, country.dateformat),
            textData('Dialing code', context, country.dialingCode),
            textData('Driving side', context, country.drivingSide)
          ],
        ),
      )
    ),
  );
                
}

Widget textData(String title,BuildContext context, String? value){
  return
  Padding(
      padding: const EdgeInsets.all(6.50),
       child: RichText(
        text: TextSpan(
          text: '${title}: ',
          style: TextStyle(fontWeight: FontWeight.w900,color: Theme.of(context).textTheme.bodyText1?.color),
          children: <TextSpan>[
               TextSpan(
                  text: value,
                  style: Theme.of(context).textTheme.bodyText1
            )
           ],
        ),
      ),
    );
}

                          
                            
                            
                          
                         
                            
                          
                        
                      
                