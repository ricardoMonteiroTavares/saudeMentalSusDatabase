import 'package:saudeMentalSusDatabase/entities/institution.dart';

class City {
  String name;
  List<Institution> institutions;
  String federationUnity;

  City({this.name, this.institutions, this.federationUnity});

  City.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    federationUnity = json['federationUnity'];
    if (json['servicesList'] != null) {
      institutions = new List<Institution>();
      json['servicesList'].forEach((v) {
        institutions.add(new Institution.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['federationUnity'] = this.federationUnity;
    if (this.institutions != null) {
      data['servicesList'] = this.institutions.map((v) => v.toJson()).toList();
    }

    return data;
  }

  @override
  String toString() {
    return '''$name, $federationUnity, $institutions''';
  }
}
