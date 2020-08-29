// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _Controller, Store {
  final _$coordAtom = Atom(name: '_Controller.coord');

  @override
  Coord get coord {
    _$coordAtom.reportRead();
    return super.coord;
  }

  @override
  set coord(Coord value) {
    _$coordAtom.reportWrite(value, super.coord, () {
      super.coord = value;
    });
  }

  final _$typeAtom = Atom(name: '_Controller.type');

  @override
  CoordType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(CoordType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
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
  dynamic setType(CoordType newType) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.setType');
    try {
      return super.setType(newType);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
coord: ${coord},
type: ${type}
    ''';
  }
}
