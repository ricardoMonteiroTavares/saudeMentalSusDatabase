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

  @observable
  ObservableMap<String, bool> values = {
    'Domingo': false,
    'Segunda-Feira': false,
    'Terça-Feira': false,
    'Quarta-Feira': false,
    'Quinta-Feira': false,
    'Sexta-Feira': false,
    'Sábado': false
  }.asObservable();

  List<CheckboxListTile> getDays() => values.keys.map((String key) {
        return new CheckboxListTile(
          title: new Text(key),
          value: values[key],
          onChanged: (bool value) => setValues(key, value),
        );
      }).toList();

  @action
  init(Reception attendanceEdit) {
    if (attendanceEdit != null) {
      openingHour = attendanceEdit.openingHour;
      closingHour = attendanceEdit.closingHour;
      values[_convertIntToDay(attendanceEdit.weekDay)] = true;
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

  bool _validateCheckBox() {
    bool flag = false;
    values.forEach((key, value) {
      if (value) {
        flag = true;
      }
    });
    return flag;
  }

  @action
  submit(BuildContext context) {
    if (formKey.currentState.validate() && _validateCheckBox()) {
      formKey.currentState.save();
      List<Reception> l = [];
      values.forEach((key, value) {
        if (value) {
          l.add(new Reception(
              openingHour: openingHour,
              closingHour: closingHour,
              weekDay: _convertDayToInt(key)));
        }
      });
      print(l.toString());
      Navigator.of(context).pop(l);
    } else {
      autoValidate = true;
    }
  }

  int _convertDayToInt(String day) {
    switch (day) {
      case 'Domingo':
        return 1;
      case 'Segunda-Feira':
        return 2;
      case 'Terça-Feira':
        return 3;
      case 'Quarta-Feira':
        return 4;
      case 'Quinta-Feira':
        return 5;
      case 'Sexta-Feira':
        return 6;
      case 'Sábado':
        return 7;
      default:
        return null;
    }
  }

  String _convertIntToDay(int day) {
    switch (day) {
      case 1:
        return 'Domingo';
      case 2:
        return 'Segunda-Feira';
      case 3:
        return 'Terça-Feira';
      case 4:
        return 'Quarta-Feira';
      case 5:
        return 'Quinta-Feira';
      case 6:
        return 'Sexta-Feira';
      case 7:
        return 'Sábado';
      default:
        return null;
    }
  }

  @action
  setValues(String key, bool newValue) {
    values[key] = newValue;
    print(values[key]);
  }
}
