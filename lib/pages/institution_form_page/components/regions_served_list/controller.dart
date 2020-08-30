import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/entities/region.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<Region> regions;

  @observable
  String newRegion = '';

  final TextEditingController editingController = new TextEditingController();

  @action
  init() {
    if ((institution.regions == null) || (institution.regions.length == 0)) {
      regions = <Region>[].asObservable();
    } else {
      regions = institution.regions;
    }
    print('Regiões: $regions');
  }

  @action
  add() {
    if (newRegion != null) {
      Region r = new Region(name: newRegion);
      regions.add(r);
      print('Adicionado na lista');
      institution.regions = regions;
      print('$institution');
      newRegion = '';
      editingController.clear();
    } else {
      print('Campo vazio ou nulo');
    }
  }

  @action
  remove(int index) {
    regions.removeAt(index);
    print('Removido da lista');
    institution.regions = regions;
    print('$institution');
  }

  @action
  setRegionName(String newValue) {
    newRegion = newValue;
    print('Nova Região: $newRegion');
  }
}
