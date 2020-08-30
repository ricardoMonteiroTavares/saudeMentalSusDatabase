import 'package:flutter/foundation.dart';

class Region {
  final String name;

  Region({@required this.name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
