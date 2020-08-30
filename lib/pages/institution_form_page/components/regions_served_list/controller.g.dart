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

  final _$regionsAtom = Atom(name: '_Controller.regions');

  @override
  ObservableList<Region> get regions {
    _$regionsAtom.reportRead();
    return super.regions;
  }

  @override
  set regions(ObservableList<Region> value) {
    _$regionsAtom.reportWrite(value, super.regions, () {
      super.regions = value;
    });
  }

  final _$newRegionAtom = Atom(name: '_Controller.newRegion');

  @override
  String get newRegion {
    _$newRegionAtom.reportRead();
    return super.newRegion;
  }

  @override
  set newRegion(String value) {
    _$newRegionAtom.reportWrite(value, super.newRegion, () {
      super.newRegion = value;
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
  dynamic add() {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.add');
    try {
      return super.add();
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
  dynamic setRegionName(String newValue) {
    final _$actionInfo = _$_ControllerActionController.startAction(
        name: '_Controller.setRegionName');
    try {
      return super.setRegionName(newValue);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
institution: ${institution},
regions: ${regions},
newRegion: ${newRegion}
    ''';
  }
}
