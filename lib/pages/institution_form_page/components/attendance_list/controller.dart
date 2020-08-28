import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<Reception> reception = <Reception>[].asObservable();

  @action
  add(Reception attendance) {
    if (attendance != null) {
      reception.add(attendance);
      print('Adicionado na Lista');
      institution.reception = reception;
      print('$institution');
    } else {
      print('Dia e Horaŕio de Atendimento veio Nulo');
    }
  }

  @action
  remove(int index) {
    reception.removeAt(index);
    print('Removido da Lista');
    institution.reception = reception;
    print('$institution');
  }
}
