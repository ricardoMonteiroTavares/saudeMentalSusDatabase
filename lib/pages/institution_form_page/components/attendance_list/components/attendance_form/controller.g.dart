// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _Controller, Store {
  final _$openingHourAtom = Atom(name: '_Controller.openingHour');

  @override
  String get openingHour {
    _$openingHourAtom.reportRead();
    return super.openingHour;
  }

  @override
  set openingHour(String value) {
    _$openingHourAtom.reportWrite(value, super.openingHour, () {
      super.openingHour = value;
    });
  }

  final _$closingHourAtom = Atom(name: '_Controller.closingHour');

  @override
  String get closingHour {
    _$closingHourAtom.reportRead();
    return super.closingHour;
  }

  @override
  set closingHour(String value) {
    _$closingHourAtom.reportWrite(value, super.closingHour, () {
      super.closingHour = value;
    });
  }

  final _$autoValidateAtom = Atom(name: '_Controller.autoValidate');

  @override
  bool get autoValidate {
    _$autoValidateAtom.reportRead();
    return super.autoValidate;
  }

  @override
  set autoValidate(bool value) {
    _$autoValidateAtom.reportWrite(value, super.autoValidate, () {
      super.autoValidate = value;
    });
  }

  final _$daySelectedAtom = Atom(name: '_Controller.daySelected');

  @override
  String get daySelected {
    _$daySelectedAtom.reportRead();
    return super.daySelected;
  }

  @override
  set daySelected(String value) {
    _$daySelectedAtom.reportWrite(value, super.daySelected, () {
      super.daySelected = value;
    });
  }

  final _$_ControllerActionController = ActionController(name: '_Controller');

  @override
  dynamic setOpeningHour(String newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setOpeningHour');
    try {
      return super.setOpeningHour(newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setClosingHour(String newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setClosingHour');
    try {
      return super.setClosingHour(newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validateHour(String value) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.validateHour');
    try {
      return super.validateHour(value);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic submit(BuildContext context) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.submit');
    try {
      return super.submit(context);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDaySelected(String newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setDaySelected');
    try {
      return super.setDaySelected(newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
openingHour: ${openingHour},
closingHour: ${closingHour},
autoValidate: ${autoValidate},
daySelected: ${daySelected}
    ''';
  }
}
