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

  final _$emailsAtom = Atom(name: '_Controller.emails');

  @override
  ObservableList<String> get emails {
    _$emailsAtom.reportRead();
    return super.emails;
  }

  @override
  set emails(ObservableList<String> value) {
    _$emailsAtom.reportWrite(value, super.emails, () {
      super.emails = value;
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
  dynamic _add(String email) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._add');
    try {
      return super._add(email);
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
emails: ${emails}
    ''';
  }
}
