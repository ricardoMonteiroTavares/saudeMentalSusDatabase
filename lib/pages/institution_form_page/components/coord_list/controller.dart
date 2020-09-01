import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/pages/coord_form_page/coord_form_page.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<Coord> coords = <Coord>[].asObservable();

  Coord getByIndex(int index) => coords[index];

  @action
  init() {
    if ((institution.coords == null) || (institution.coords.length == 0)) {
      coords = <Coord>[].asObservable();
    } else {
      coords = institution.coords.asObservable();
    }
    print('Coords: $coords');
  }

  edit(BuildContext context, int index) async {
    final coord = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CoordFormPage(
              coordEdit: coords[index],
            )));
    _edit(coord, index);
  }

  Future<void> add(BuildContext context) async {
    final coord = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CoordFormPage(
              coordEdit: null,
            )));
    _add(coord);
  }

  @action
  _add(Coord coord) {
    if (coord != null) {
      coords.add(coord);
      print('Adicionado');
      institution.coords = coords;
      print('$institution');
    } else {
      print('Coordenador veio Nulo');
    }
  }

  @action
  remove(int index) {
    coords.removeAt(index);
    print('Removido');
    institution.coords = coords;
    print('$institution');
  }

  @action
  _edit(Coord coord, int index) {
    if (coord != null) {
      coords.removeAt(index);
      coords.insert(index, coord);
      print('Editado');
      institution.coords = coords;
      print('$coords');
    } else {
      print('Coordenador veio Nulo');
    }
  }
}
