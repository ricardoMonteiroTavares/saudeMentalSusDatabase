class Address {
  String street;
  String district;
  String houseNumber;
  double lat;
  double long;

  Address({
    this.street,
    this.district,
    this.houseNumber,
    this.lat,
    this.long,
  });

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    district = json['district'];
    houseNumber = json['houseNumber'];
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['district'] = this.district;
    data['houseNumber'] = this.houseNumber;
    data['lat'] = this.lat;
    data['long'] = this.long;
    return data;
  }

  @override
  String toString() =>
      "$street, $houseNumber, $district. Coordenadas: $lat, $long";
}
