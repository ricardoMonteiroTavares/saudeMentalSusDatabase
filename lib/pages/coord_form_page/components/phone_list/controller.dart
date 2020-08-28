import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var coord = GetIt.I.get<Coord>();

  @observable
  ObservableList<String> phones = <String>[].asObservable();

  @action
  add(String phone) {
    if (phone != null) {
      phones.add(phone);
      print('Adicionado na Lista');
      coord.phones = phones;
      print('$coord');
    } else {
      print('Telefone veio Nulo');
    }
  }

  @action
  remove(int index) {
    phones.removeAt(index);
    print('Removido da Lista');
    coord.phones = phones;
    print('$coord');
  }
}
