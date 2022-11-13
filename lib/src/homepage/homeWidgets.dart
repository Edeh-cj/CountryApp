import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/models.dart/country_model.dart';
import 'package:hng_countryapp_3/providers/country_provider.dart';
import 'package:hng_countryapp_3/providers/theme_provider.dart';
import 'package:hng_countryapp_3/search_delegate.dart';
import 'package:hng_countryapp_3/src/filterpage/filterpage.dart';
import 'package:provider/provider.dart';

import '../detailspage/detailspage.dart';

Widget exploreAndSunny(Size size, BuildContext context){
  return SizedBox(         
     height: 50,
      width: size.width,
      child: Stack(
       children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Explore', style: Theme.of(context).textTheme.bodyText1,),
        ),
            
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Provider.of<ThemeNotifier>(context).themeicon, 
            color: Theme.of(context).iconTheme.color,), 
            onPressed: () { 
                Provider.of<ThemeNotifier>(context, listen: false).switchthemeMode();
             },),
        )
      ],
    ),
  );
}

Widget textfield_ (BuildContext context, CountryListObject countrylistobject, Color background){
    return
    GestureDetector(
      onTap: (){
        showSearch(context: context,
        delegate: MySearchDelegate(countrylistobject: countrylistobject, providercontext: context, background: background));
        },
      child: const TextField(           
           enabled: false,           
           decoration: InputDecoration(          
             prefixIcon: Icon(Icons.search),
             hintText: 'Search Country',           
             fillColor: Colors.grey,
             filled: true,   
                       
      ),
      ),
    );
}

Widget filterAndLanguage(Size size, Color background, Color text, BuildContext context){
  return
  SizedBox(
    height: 50,
    width: size.width,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
       
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: background,
            onPrimary: text
          ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Filterpage()));
        }, icon: const Icon(Icons.filter_alt_outlined,), label: const Text('filter',))
     ],
    ),
  );
}

Widget countryList(CountryNotifier value, BuildContext context, Color background){
  return ListView( children: 
                        <Widget>[alphabet('A')]+            
                        value.countryListObject.listA.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('B')]+            
                        value.countryListObject.listB.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('C')]+            
                        value.countryListObject.listC.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('D')]+            
                        value.countryListObject.listD.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('E')]+            
                        value.countryListObject.listE.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('F')]+            
                        value.countryListObject.listF.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('G')]+            
                        value.countryListObject.listG.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('H')]+            
                        value.countryListObject.listH.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('I')]+            
                        value.countryListObject.listI.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('J')]+            
                        value.countryListObject.listJ.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('K')]+            
                        value.countryListObject.listK.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('L')]+            
                        value.countryListObject.listL.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('M')]+            
                        value.countryListObject.listM.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('N')]+            
                        value.countryListObject.listN.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('O')]+            
                        value.countryListObject.listO.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('P')]+            
                        value.countryListObject.listP.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('Q')]+            
                        value.countryListObject.listQ.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('R')]+            
                        value.countryListObject.listR.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('S')]+            
                        value.countryListObject.listS.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('T')]+            
                        value.countryListObject.listT.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('U')]+            
                        value.countryListObject.listU.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('W')]+            
                        value.countryListObject.listW.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('X')]+            
                        value.countryListObject.listX.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('Y')]+
                        value.countryListObject.listY.map((e) => countrytile(e, context, background)).toList()+                        
                        <Widget>[alphabet('Z')]+            
                        value.countryListObject.listZ.map((e) => countrytile(e, context, background)).toList(),                    
 );
                  
}

Widget waitingScreen(BuildContext context){
  return Align(alignment: Alignment.topCenter,
    child: Padding(
      padding: const EdgeInsets.all(8.0),              
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
   ));
}

Widget alphabet(String letter){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(letter),
      );
}

Widget countrytile(CountryObject e, BuildContext context, Color background){
  return ListTile(
    title: Text(e.name), 
    leading: CircleAvatar(
      radius: 20,
      backgroundColor: background,
      child: Image.network(e.flags!, fit: BoxFit.fill,)), 
    subtitle: Text(e.capital??''),
    onTap: (){Navigator.push(context, 
      MaterialPageRoute(
        builder: (context)=> Detailspage(country: e))
      );
    }
  );
}