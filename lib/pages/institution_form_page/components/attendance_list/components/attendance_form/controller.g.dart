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

  final _$checkboxErrorAtom = Atom(name: '_Controller.checkboxError');

  @override
  bool get checkboxError {
    _$checkboxErrorAtom.reportRead();
    return super.checkboxError;
  }

  @override
  set checkboxError(bool value) {
    _$checkboxErrorAtom.reportWrite(value, super.checkboxError, () {
      super.checkboxError = value;
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

  final _$valuesAtom = Atom(name: '_Controller.values');

  @override
  ObservableMap<String, bool> get values {
    _$valuesAtom.reportRead();
    return super.values;
  }

  @override
  set values(ObservableMap<String, bool> value) {
    _$valuesAtom.reportWrite(value, super.values, () {
      super.values = value;
    });
  }

  final _$_ControllerActionController = ActionController(name: '_Controller');

  @override
  dynamic init(Reception attendanceEdit) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.init');
    try {
      return super.init(attendanceEdit);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

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
  String validateClosingHour(String value) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.validateClosingHour');
    try {
      return super.validateClosingHour(value);
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
  void _validateCheckBox() {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller._validateCheckBox');
    try {
      return super._validateCheckBox();
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
  dynamic setValues(String key, bool newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setValues');
    try {
      return super.setValues(key, newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
openingHour: ${openingHour},
closingHour: ${closingHour},
checkboxError: ${checkboxError},
autoValidate: ${autoValidate},
values: ${values}
    ''';
  }
}
