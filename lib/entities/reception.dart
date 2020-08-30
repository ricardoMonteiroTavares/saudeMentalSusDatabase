import 'package:flutter/foundation.dart';
import 'package:saudeMentalSusDatabase/util/get_weekday.dart';

class Reception {
  String openingHour;
  String closingHour;
  int weekDay;

  Reception(
      {@required this.openingHour,
      @required this.closingHour,
      @required this.weekDay});

  Reception.fromJson(Map<String, dynamic> json) {
    openingHour = json['openingHour'];
    closingHour = json['closingHour'];
    weekDay = json['weekDay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['openingHour'] = this.openingHour;
    data['closingHour'] = this.closingHour;
    data['weekDay'] = this.weekDay;
    return data;
  }

  @override
  String toString() =>
      '${getWeekday(weekDay)}: De $openingHour até $closingHour';
}
