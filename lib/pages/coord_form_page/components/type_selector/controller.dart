import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/coord_type.dart';
import 'package:saudeMentalSusDatabase/util/enum_converter.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var coord = GetIt.I.get<Coord>();

  @observable
  CoordType type;

  List<RadioListTile<CoordType>> radioOptions(BuildContext context) =>
      List.generate(
          CoordType.values.length,
          (int index) => RadioListTile<CoordType>(
                groupValue: type,
                onChanged: setType,
                value: CoordType.values[index],
                title: Text(
                  EnumConverter.convertEnumToString(CoordType.values[index]),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ));

  @action
  init() {
    if (coord.coordType != null) {
      type = coord.coordType;
      print('Atualizado: $type');
    }
  }

  @action
  setType(CoordType newType) {
    type = newType;
    coord.coordType = type;
    print('$coord');
  }
}
