import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/pages/institution_form_page/institution_form_page.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var city = GetIt.I.get<City>();

  @observable
  ObservableList<Institution> institutions;

  Institution getByIndex(int index) => institutions[index];

  @action
  init() {
    if ((city.institutions == null) || (city.institutions.length == 0)) {
      institutions = <Institution>[].asObservable();
    } else {
      institutions = city.institutions.asObservable();
    }
    print('Instituições: $institutions');
  }

  edit(BuildContext context, int index) async {
    final institution = await Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => InstitutionFormPage(
              institutionEdit: institutions[index],
            )));
    _edit(institution, index);
  }

  Future<void> add(BuildContext context) async {
    final institution = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => InstitutionFormPage()));
    _add(institution);
  }

  @action
  _add(Institution institution) {
    if (institution != null) {
      institutions.add(institution);
      print('Adicionado na Lista');
      city.institutions = institutions;
      print('$city');
    } else {
      print('Instituição veio Nulo');
    }
  }

  @action
  remove(int index) {
    institutions.removeAt(index);
    print('Removido da Lista');
    city.institutions = institutions;
    print('$city');
  }

  @action
  _edit(Institution institution, int index) {
    if (institution != null) {
      institutions[index] = institution;
      print('Editado');
      city.institutions = institutions;
      print('$city');
    } else {
      print('Coordenador veio Nulo');
    }
  }
}
