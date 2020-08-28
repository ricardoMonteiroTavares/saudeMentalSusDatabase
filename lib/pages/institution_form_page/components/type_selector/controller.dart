import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/entities/institution_type.dart';
import 'package:saudeMentalSusDatabase/util/enum_converter.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  InstitutionType type;

  List<RadioListTile<InstitutionType>> radioOptions(BuildContext context) =>
      List.generate(
          InstitutionType.values.length,
          (int index) => RadioListTile<InstitutionType>(
                groupValue: type,
                onChanged: setType,
                value: InstitutionType.values[index],
                title: Text(
                  EnumConverter.convertEnumToString(
                      InstitutionType.values[index]),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ));

  @action
  setType(InstitutionType newType) {
    type = newType;
    institution.institutionType = type;
    print('$institution');
  }
}
