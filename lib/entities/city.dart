import 'package:saudeMentalSusDatabase/entities/institution.dart';

class City {
  String name;
  List<Institution> institutions;
  String federationUnity;

  City({this.name, this.institutions, this.federationUnity});

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
