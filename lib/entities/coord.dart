import 'package:saudeMentalSusDatabase/util/enum_converter.dart';

import 'coord_type.dart';

class Coord {
  String name;
  CoordType coordType;
  List<String> phones;
  List<String> emails;

  Coord({this.name, this.coordType, this.phones, this.emails});

  Coord.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    coordType =
        EnumConverter.convertStringToEnum(json['type'], CoordType.values);
    phones = json['phone'].cast<String>();
    emails = json['email'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = EnumConverter.convertEnumToString(this.coordType);
    data['phone'] = this.phones;
    data['email'] = this.emails;
    return data;
  }

  @override
  String toString() {
    return '''Nome: $name,
    CoordType: $coordType,
    Telefones: $phones,
    Emails: $emails''';
  }
}
