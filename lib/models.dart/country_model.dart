class CountryObject {
  final String name, region, government, drivingSide, startOfWeek;
  final String? capital, coatOfArms, flags, dialingCode;
  
  
  final int population;
  final double area;
  final bool? independent;
  final String timezones;
  final String continents;

  String get dateformat => 'dd/mm/yy';
  String get religion => 'Christianity';
  String get gdp => '-';
  String get language => '-';
  String get currency => '-';
  String get ethnicgroups => '-';
  String get motto => '-';
  
  CountryObject({required this.continents, required this.government, required this.drivingSide, required this.dialingCode,required this.area, required this.independent, required this.flags, required this.name,required this.region,required this.capital,required this.population,required this.timezones,required this.coatOfArms,required this.startOfWeek} );
    
}


class CountryListObject{
  List<CountryObject> countries;
  List<CountryObject> _viewlist = [];

  set viewlist(viewlist)=> _viewlist = viewlist;
  List<CountryObject> get viewlist => _viewlist;

  CountryListObject({required this.countries });
  
  List<CountryObject> get listA => _viewlist.where((e) => e.name.startsWith('A')).toList();
  List<CountryObject> get listB => _viewlist.where((e) => e.name.startsWith('B')).toList();
  List<CountryObject> get listC => _viewlist.where((e) => e.name.startsWith('C')).toList();
  List<CountryObject> get listD => _viewlist.where((e) => e.name.startsWith('D')).toList();
  List<CountryObject> get listE => _viewlist.where((e) => e.name.startsWith('E')).toList();
  List<CountryObject> get listF => _viewlist.where((e) => e.name.startsWith('F')).toList();
  List<CountryObject> get listG => _viewlist.where((e) => e.name.startsWith('G')).toList();
  List<CountryObject> get listH => _viewlist.where((e) => e.name.startsWith('H')).toList();
  List<CountryObject> get listI => _viewlist.where((e) => e.name.startsWith('I')).toList();
  List<CountryObject> get listJ => _viewlist.where((e) => e.name.startsWith('J')).toList();
  List<CountryObject> get listK => _viewlist.where((e) => e.name.startsWith('K')).toList();
  List<CountryObject> get listL => _viewlist.where((e) => e.name.startsWith('L')).toList();
  List<CountryObject> get listM => _viewlist.where((e) => e.name.startsWith('M')).toList();
  List<CountryObject> get listN => _viewlist.where((e) => e.name.startsWith('N')).toList();
  List<CountryObject> get listO => _viewlist.where((e) => e.name.startsWith('O')).toList();
  List<CountryObject> get listP => _viewlist.where((e) => e.name.startsWith('P')).toList();
  List<CountryObject> get listQ => _viewlist.where((e) => e.name.startsWith('Q')).toList();
  List<CountryObject> get listR => _viewlist.where((e) => e.name.startsWith('R')).toList();
  List<CountryObject> get listS => _viewlist.where((e) => e.name.startsWith('S')).toList();
  List<CountryObject> get listT => _viewlist.where((e) => e.name.startsWith('T')).toList();
  List<CountryObject> get listU => _viewlist.where((e) => e.name.startsWith('U')).toList();
  List<CountryObject> get listW => _viewlist.where((e) => e.name.startsWith('W')).toList();
  List<CountryObject> get listX => _viewlist.where((e) => e.name.startsWith('X')).toList();
  List<CountryObject> get listY => _viewlist.where((e) => e.name.startsWith('Y')).toList();
  List<CountryObject> get listZ => _viewlist.where((e) => e.name.startsWith('Z')).toList();
}