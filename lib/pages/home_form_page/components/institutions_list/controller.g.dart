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

  final _$institutionsAtom = Atom(name: '_Controller.institutions');

  @override
  ObservableList<Institution> get institutions {
    _$institutionsAtom.reportRead();
    return super.institutions;
  }

  @override
  set institutions(ObservableList<Institution> value) {
    _$institutionsAtom.reportWrite(value, super.institutions, () {
      super.institutions = value;
    });
  }

  final _$_ControllerActionController = ActionController(name: '_Controller');

  @override
  dynamic _add(Institution institution) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._add');
    try {
      return super._add(institution);
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
  dynamic _edit(Institution institution, int index) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._edit');
    try {
      return super._edit(institution, index);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
city: ${city},
institutions: ${institutions}
    ''';
  }
}
