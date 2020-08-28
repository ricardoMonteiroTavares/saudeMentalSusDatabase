import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<Coord> coords = <Coord>[].asObservable();

  @action
  add(Coord coord) {
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
}
