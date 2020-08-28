import 'package:flutter/foundation.dart';
import 'package:saudeMentalSusDatabase/util/get_weekday.dart';

class Reception {
  final String openingHour;
  final String closingHour;
  final int weekDay;

  Reception(
      {@required this.openingHour,
      @required this.closingHour,
      @required this.weekDay});

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
