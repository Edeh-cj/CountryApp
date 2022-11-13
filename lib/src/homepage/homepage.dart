import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/providers/country_provider.dart';
import 'package:hng_countryapp_3/src/homepage/homeWidgets.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future countries;

  @override
  void initState() {
    super.initState();
    countries = Provider.of<CountryNotifier>(context, listen: false).getCountries();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Color textcolor = Theme.of(context).textTheme.bodyText1?.color ?? Colors.black;
    Color backgroundColor_ = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(  
      appBar: AppBar(
        toolbarHeight: 150,
        elevation: 0,
        backgroundColor: backgroundColor_,
        foregroundColor: textcolor,
        title: Column(
          children: [
             exploreAndSunny(screenSize, context),
             textfield_(context, Provider.of<CountryNotifier>(context).countryListObject, backgroundColor_),
             filterAndLanguage(screenSize, backgroundColor_, textcolor, context)                                            
                 
          ],
        ),        
      ),

      body: //SUCCESS VIEW
            FutureBuilder(
              future: countries,
              builder: (context, snapshot) {
              if (snapshot.hasData){
                return Consumer<CountryNotifier>(
                  builder: (context, value, child) {                    
                    return countryList(value, context, backgroundColor_);
                  }
                );
              } else if(snapshot.hasError){
                return const Center(child: Text('error in Connection', style: TextStyle(color: Colors.red),));
              }
            
            return waitingScreen(context);
            } )
    );
  }
}