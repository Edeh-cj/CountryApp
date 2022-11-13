import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/models.dart/country_model.dart';
import 'package:hng_countryapp_3/src/detailspage/detail_widgets.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({Key? key, required this.country}) : super(key: key);
  final CountryObject country;

  @override
  // ignore: no_logic_in_create_state
  State<Detailspage> createState() => _DetailspageState(country);
}

class _DetailspageState extends State<Detailspage> {
  final CountryObject country;

  _DetailspageState(this.country);
  PageController pageController = PageController();
  int int_ = 0;
  
  @override
  Widget build(BuildContext context) {
    Color textcolor = Theme.of(context).textTheme.bodyText1?.color ?? Colors.black;
    Color backgroundColor_ = Theme.of(context).scaffoldBackgroundColor;
    Size screenSize = MediaQuery.of(context).size;
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          foregroundColor: textcolor,
          backgroundColor: backgroundColor_,
          title: Text(country.name,),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  
                  // Country Image
                  SizedBox(
                    height: 200,
                    width: screenSize.width,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageController,
                          onPageChanged: (int num){
                            setState(() {
                              int_ = num;
                            });
                          },
                          children: [
                            Image.network(country.flags?? 'https://flagcdn.com/w320/br.png'),
                            Image.network(country.coatOfArms?? 'https://mainfacts.com/media/images/coats_of_arms/br.png')
                          ],
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(onPressed: (){
                            pageController.nextPage(duration: const Duration(microseconds: 100), curve: Curves.easeIn);
                          }, icon: Icon(
                              Icons.arrow_forward_ios, 
                              color: int_==1? Colors.transparent: Colors.black,))),
                        
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(onPressed: (){
                            pageController.previousPage(duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                          }, icon: Icon(Icons.arrow_back_ios,
                              color: int_==0? Colors.transparent: Colors.black))),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: int_== 1? Colors.black : Colors.blue, 
                                  radius: 5,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: int_== 0? Colors.black : Colors.blue,
                                  radius: 5,),
                              ),
                              
                            ],
                          ),
                        )

                      ],
                    )
                  ),
          
                  //Details
                 countryData(country, context, screenSize)
                ],
              ),
          
              
            ],
          ),
        ),        
      ),
    );
  }
}
