// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _Controller, Store {
  final _$institutionAtom = Atom(name: '_Controller.institution');

  @override
  Institution get institution {
    _$institutionAtom.reportRead();
    return super.institution;
  }

  @override
  set institution(Institution value) {
    _$institutionAtom.reportWrite(value, super.institution, () {
      super.institution = value;
    });
  }

  final _$receptionAtom = Atom(name: '_Controller.reception');

  @override
  ObservableList<Reception> get reception {
    _$receptionAtom.reportRead();
    return super.reception;
  }

  @override
  set reception(ObservableList<Reception> value) {
    _$receptionAtom.reportWrite(value, super.reception, () {
      super.reception = value;
    });
  }

  final _$_ControllerActionController = ActionController(name: '_Controller');

  @override
  dynamic init() {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.init');
    try {
      return super.init();
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _add(Reception attendance) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._add');
    try {
      return super._add(attendance);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _edit(Reception attendance, int index) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._edit');
    try {
      return super._edit(attendance, index);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(int index) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.remove');
    try {
      return super.remove(index);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
institution: ${institution},
reception: ${reception}
    ''';
  }
}
