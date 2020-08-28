import 'package:saudeMentalSusDatabase/entities/address.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/institution_type.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';
import 'package:saudeMentalSusDatabase/util/enum_converter.dart';

class Institution {
  String name;
  List<String> phones;
  List<String> emails;
  Address address;
  InstitutionType institutionType;
  List<Coord> coords;
  List<Reception> reception;
  String regions;

  Institution(
      {this.name,
      this.phones,
      this.emails,
      this.address,
      this.institutionType,
      this.coords,
      this.regions,
      this.reception});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = EnumConverter.convertEnumToString(this.institutionType);
    data['phone'] = this.phones;
    data['email'] = this.emails;
    data['address'] = this.address.toJson();
    data['region'] = this.regions;
    if (this.coords != null) {
      data['coord'] = this.coords.map((v) => v.toJson()).toList();
    }
    if (this.reception != null) {
      data['reception'] = this.reception.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return '''Nome: $name,
    Telefones: $phones,
    Emails: $emails,
    Endereço: ${address.toString()},
    Tipo: $institutionType,
    Regiões: $regions,
    Coords: $coords''';
  }
}
