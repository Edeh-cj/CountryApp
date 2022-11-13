import 'package:flutter/material.dart';
import 'package:hng_countryapp_3/src/filterpage/filter_widgets.dart';

class Filterpage extends StatefulWidget {
  const Filterpage({Key? key}) : super(key: key);

  @override
  State<Filterpage> createState() => _FilterpageState();
}

class _FilterpageState extends State<Filterpage> {
  bool isExpandedcontinent = false;
  bool isExpandedtimezone = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
        
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            switch (panelIndex) {
              case 0: setState(()=> isExpandedcontinent = !isExpanded);                
                break;
              case 1: setState(()=> isExpandedtimezone = !isExpanded);
                break;
              default:
            }
          },
          children: [
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {                
                return const ListTile(
                  title: Text('Continent'),                                  
                );          
              },
              isExpanded: isExpandedcontinent, 
              canTapOnHeader: true,
              body: SizedBox(                
                child: Column(
                  children: [
                    panelradio(context, 'None', RegExp(r'.*')),
                    panelradio(context, 'Africa', 'Africa'),
                    panelradio(context, 'Antarctica', 'Antarctica'),
                    panelradio(context, 'Asia', 'Asia'),
                    panelradio(context, 'Australia', 'Australia'),
                    panelradio(context, 'Europe', 'Europe'),
                    panelradio(context, 'North America', 'North'),
                    panelradio(context, 'South America', 'South')
                  ],
                ),
              )
              ),
              ExpansionPanel(
              headerBuilder: (context, isExpanded) {                
                return const ListTile(
                  title: Text('Time Zone'),                                  
                );
              },
              isExpanded: isExpandedtimezone,              
              body: SizedBox(                
                child: Column(
                  children: [
                    panelradiotimzone(context, 'None', RegExp(r'.*')),
                    panelradiotimzone(context, 'GMT+1:00', '1'),
                    panelradiotimzone(context, 'GMT+2:00', '2'),
                    panelradiotimzone(context, 'GMT+3:00', '3'),
                    panelradiotimzone(context, 'GMT+4:00', '4'),
                    panelradiotimzone(context, 'GMT+5:00', '5'),
                    panelradiotimzone(context, 'GMT+6:00', '6'),
                    panelradiotimzone(context, 'GMT+7:00', '7'),
                    panelradiotimzone(context, 'GMT-6:00', '6'),
                    panelradiotimzone(context, 'GMT-5:00', '5'),
                    panelradiotimzone(context, 'GMT-4:00', '4')
                  ],
                ),
              )
              )
          ],
        )
      ),
    );
  }
}