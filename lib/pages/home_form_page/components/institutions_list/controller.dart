import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var city = GetIt.I.get<City>();

  @observable
  ObservableList<Institution> institutions = <Institution>[].asObservable();

  @action
  add(Institution institution) {
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
}
