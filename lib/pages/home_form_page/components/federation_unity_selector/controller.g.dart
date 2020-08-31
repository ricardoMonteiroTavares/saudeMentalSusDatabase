// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _Controller, Store {
  final _$cityAtom = Atom(name: '_Controller.city');

  @override
  City get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(City value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$fuSelectedAtom = Atom(name: '_Controller.fuSelected');

  @override
  String get fuSelected {
    _$fuSelectedAtom.reportRead();
    return super.fuSelected;
  }

  @override
  set fuSelected(String value) {
    _$fuSelectedAtom.reportWrite(value, super.fuSelected, () {
      super.fuSelected = value;
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
  dynamic setFuSelected(String newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setFuSelected');
    try {
      return super.setFuSelected(newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
city: ${city},
fuSelected: ${fuSelected}
    ''';
  }
}
