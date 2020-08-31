import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  final formKey = GlobalKey<FormState>();

  @observable
  String openingHour;

  @observable
  String closingHour;

  @observable
  bool autoValidate = false;

  @action
  init(Reception attendanceEdit) {
    if (attendanceEdit != null) {
      openingHour = attendanceEdit.openingHour;
      closingHour = attendanceEdit.closingHour;
      daySelected = _days[attendanceEdit.weekDay - 1];
    }
  }

  @action
  setOpeningHour(String newValue) {
    openingHour = newValue;
    print('Hora Abertura: $openingHour');
  }

  @action
  setClosingHour(String newValue) {
    closingHour = newValue;
    print('Hora Fechamento: $closingHour');
  }

  @action
  String validateClosingHour(String value) {
    String error = validateHour(value);
    if ((error == null) && (openingHour != null)) {
      List<String> aux = ('$closingHour:$openingHour').split(':');
      List<int> aux2 = List.generate(4, (index) {
        int fator = (index >= 2) ? -1 : 1;
        if ((index == 0) || (index == 2)) {
          return (int.tryParse(aux[index]) *
              60 *
              fator); // Converto para minutos
        }
        return (int.tryParse(aux[index]) * fator);
      });
      int difference = aux2.reduce((value, element) => value + element);

      error = (difference > 0)
          ? null
          : 'Hora de fechamento não é posterior do que a abertura';
    }
    return error;
  }

  @action
  String validateHour(String value) {
    RegExp regExp = RegExp(r'^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$');
    if (regExp.hasMatch(value)) return null;
    return 'Hora Inválida';
  }

  @action
  submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Reception reception = new Reception(
          openingHour: openingHour,
          closingHour: closingHour,
          weekDay: (_days.indexOf(daySelected) + 1));
      Navigator.of(context).pop(reception);
    } else {
      autoValidate = true;
    }
  }

  @observable
  String daySelected = 'Domingo';

  final _days = [
    'Domingo',
    'Segunda-Feira',
    'Terça-Feira',
    'Quarta-Feira',
    'Quinta-Feira',
    'Sexta-Feira',
    'Sábado',
  ];

  List<DropdownMenuItem<String>> getDays(BuildContext context) => _days
      .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ))
      .toList();

  @action
  setDaySelected(String newValue) {
    daySelected = newValue;
    print('Dia: $daySelected');
  }
}
