import 'package:saudeMentalSusDatabase/entities/address.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/institution_type.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';
import 'package:saudeMentalSusDatabase/entities/region.dart';
import 'package:saudeMentalSusDatabase/util/enum_converter.dart';

class Institution {
  String name;
  List<String> phones;
  List<String> emails;
  Address address;
  InstitutionType institutionType;
  List<Coord> coords;
  List<Reception> reception;
  List<Region> regions;

  Institution(
      {this.name,
      this.phones,
      this.emails,
      this.address,
      this.institutionType,
      this.coords,
      this.regions,
      this.reception});

  Institution.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    institutionType =
        EnumConverter.convertStringToEnum(json['type'], InstitutionType.values);
    phones = json['phone'].cast<String>();
    emails = json['email'].cast<String>();
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    if (json['region'] != null) {
      regions = new List<Region>();
      json['region'].forEach((v) {
        regions.add(new Region.fromJson(v));
      });
    }
    if (json['coord'] != null) {
      coords = new List<Coord>();
      json['coord'].forEach((v) {
        coords.add(new Coord.fromJson(v));
      });
    }
    if (json['reception'] != null) {
      reception = new List<Reception>();
      json['reception'].forEach((v) {
        reception.add(new Reception.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = EnumConverter.convertEnumToString(this.institutionType);
    data['phone'] = this.phones;
    data['email'] = this.emails;
    data['address'] = this.address.toJson();
    if (this.regions != null) {
      data['region'] = this.regions.map((v) => v.toJson()).toList();
    }
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
