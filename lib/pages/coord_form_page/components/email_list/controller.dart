import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var coord = GetIt.I.get<Coord>();

  @observable
  ObservableList<String> emails = <String>[].asObservable();

  @action
  add(String email) {
    if (email != null) {
      emails.add(email);
      print('Adicionado na lista');
      coord.emails = emails;
      print('$coord');
    } else {
      print('Email veio Nulo');
    }
  }

  @action
  remove(int index) {
    emails.removeAt(index);
    print('Removido da lista');
    coord.emails = emails;
    print('$coord');
  }
}
