import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  final formKey = GlobalKey<FormState>();

  @observable
  String email;

  @observable
  bool autoValidate = false;

  @action
  setEmail(String newValue) {
    email = newValue;
    print('Email: $email');
  }

  @action
  String validatePhone(String value) {
    RegExp regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (regExp.hasMatch(value)) return null;
    return 'Email Inválido';
  }

  @action
  submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pop(email);
    } else {
      autoValidate = true;
    }
  }
}
