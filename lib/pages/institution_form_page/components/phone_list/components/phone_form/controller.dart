import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  final formKey = GlobalKey<FormState>();

  @observable
  String phone;

  @observable
  bool autoValidate = false;

  @action
  setPhone(String newValue) {
    phone = newValue;
    print('Telefone: $phone');
  }

  @action
  String validatePhone(String value) {
    RegExp regExp = RegExp(r'(\(\d{2}\)\s)(\d{4,5}\-\d{4})');
    if (regExp.hasMatch(value)) return null;
    return 'Telefone Inválido';
  }

  @action
  submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pop(phone);
    } else {
      autoValidate = true;
    }
  }
}
