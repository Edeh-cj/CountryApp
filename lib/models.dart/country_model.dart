class CountryObject {
  final String name, region, dialingCode, government, drivingSide, startOfWeek;
  final String? capital, coatOfArms, flags;
  
  
  final int population;
  final double area;
  final bool independent;
  final List timezones;

  String get dateformat => 'dd/mm/yy';
  String get religion => 'Christianity';
  String get gdp => '-';
  String get language => '-';
  String get currency => '-';
  String get ethnicgroups => '-';
  String get motto => '-';
  
  CountryObject({required this.government, required this.drivingSide, required this.dialingCode,required this.area, required this.independent, required this.flags, required this.name,required this.region,required this.capital,required this.population,required this.timezones,required this.coatOfArms,required this.startOfWeek} );
    
}


class CountryListObject{
  List<CountryObject> countries;

  CountryListObject({required this.countries });

  List<CountryObject> get listA => countries.where((e) => e.name.startsWith('A')).toList();
  List<CountryObject> get listB => countries.where((e) => e.name.startsWith('B')).toList();
  List<CountryObject> get listC => countries.where((e) => e.name.startsWith('C')).toList();
  List<CountryObject> get listD => countries.where((e) => e.name.startsWith('D')).toList();
  List<CountryObject> get listE => countries.where((e) => e.name.startsWith('E')).toList();
  List<CountryObject> get listF => countries.where((e) => e.name.startsWith('F')).toList();
  List<CountryObject> get listG => countries.where((e) => e.name.startsWith('G')).toList();
  List<CountryObject> get listH => countries.where((e) => e.name.startsWith('H')).toList();
  List<CountryObject> get listI => countries.where((e) => e.name.startsWith('I')).toList();
  List<CountryObject> get listJ => countries.where((e) => e.name.startsWith('J')).toList();
  List<CountryObject> get listK => countries.where((e) => e.name.startsWith('K')).toList();
  List<CountryObject> get listL => countries.where((e) => e.name.startsWith('L')).toList();
  List<CountryObject> get listM => countries.where((e) => e.name.startsWith('M')).toList();
  List<CountryObject> get listN => countries.where((e) => e.name.startsWith('N')).toList();
  List<CountryObject> get listO => countries.where((e) => e.name.startsWith('O')).toList();
  List<CountryObject> get listP => countries.where((e) => e.name.startsWith('P')).toList();
  List<CountryObject> get listQ => countries.where((e) => e.name.startsWith('Q')).toList();
  List<CountryObject> get listR => countries.where((e) => e.name.startsWith('R')).toList();
  List<CountryObject> get listS => countries.where((e) => e.name.startsWith('S')).toList();
  List<CountryObject> get listT => countries.where((e) => e.name.startsWith('T')).toList();
  List<CountryObject> get listU => countries.where((e) => e.name.startsWith('U')).toList();
  List<CountryObject> get listW => countries.where((e) => e.name.startsWith('W')).toList();
  List<CountryObject> get listX => countries.where((e) => e.name.startsWith('X')).toList();
  List<CountryObject> get listY => countries.where((e) => e.name.startsWith('Y')).toList();
  List<CountryObject> get listZ => countries.where((e) => e.name.startsWith('Z')).toList();
}