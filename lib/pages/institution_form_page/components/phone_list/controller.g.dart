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

  final _$phonesAtom = Atom(name: '_Controller.phones');

  @override
  ObservableList<String> get phones {
    _$phonesAtom.reportRead();
    return super.phones;
  }

  @override
  set phones(ObservableList<String> value) {
    _$phonesAtom.reportWrite(value, super.phones, () {
      super.phones = value;
    });
  }

  final _$editAsyncAction = AsyncAction('_Controller.edit');

  @override
  Future<void> edit(BuildContext context, int index) {
    return _$editAsyncAction.run(() => super.edit(context, index));
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
  dynamic _add(String phone) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._add');
    try {
      return super._add(phone);
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _edit(String phone, int index) {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller._edit');
    try {
      return super._edit(phone, index);
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
phones: ${phones}
    ''';
  }
}
