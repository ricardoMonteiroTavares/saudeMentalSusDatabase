import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<String> phones = <String>[].asObservable();

  @action
  add(String phone) {
    if (phone != null) {
      phones.add(phone);
      print('Adicionado na Lista');
      institution.phones = phones;
      print('$institution');
    } else {
      print('Telefone veio Nulo');
    }
  }

  @action
  remove(int index) {
    phones.removeAt(index);
    print('Removido da Lista');
    institution.phones = phones;
    print('$institution');
  }
}
