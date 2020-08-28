import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  String get regions => institution.regions;

  @action
  setName(String newValue) {
    institution.regions = newValue;
    print('$institution');
  }
}
