import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/components/forms/phone_form/phone_form.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var coord = GetIt.I.get<Coord>();

  @observable
  ObservableList<String> phones;

  String getbyIndex(int index) => phones[index];

  @action
  Future<void> add(BuildContext context) async {
    final phoneForm = new PhoneFormComp();
    final phone = await phoneForm.showPhoneFormDialog(context);
    _add(phone);
  }

  @action
  Future<void> edit(BuildContext context, int index) async {
    final phoneForm = new PhoneFormComp(phoneEdit: phones[index]);
    final phone = await phoneForm.showPhoneFormDialog(context);
    _edit(phone, index);
  }

  @action
  init() {
    if ((coord.phones == null) || (coord.phones.length == 0)) {
      phones = <String>[].asObservable();
    } else {
      phones = coord.phones.asObservable();
    }
    print('Telefones: $phones');
  }

  @action
  _add(String phone) {
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
  _edit(String phone, int index) {
    if (phone != null) {
      phones[index] = phone;
      print('Editado');
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
