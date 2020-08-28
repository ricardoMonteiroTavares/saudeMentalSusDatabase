import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<String> emails = <String>[].asObservable();

  @action
  add(String email) {
    if (email != null) {
      emails.add(email);
      print('Adicionado na lista');
      institution.emails = emails;
      print('$institution');
    } else {
      print('Email veio Nulo');
    }
  }

  @action
  remove(int index) {
    emails.removeAt(index);
    print('Removido da lista');
    institution.emails = emails;
    print('$institution');
  }
}
