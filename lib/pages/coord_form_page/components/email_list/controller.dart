import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/components/forms/email_form/email_form.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var coord = GetIt.I.get<Coord>();

  @observable
  ObservableList<String> emails = <String>[].asObservable();

  String getbyIndex(int index) => emails[index];

  Future<void> add(BuildContext context) async {
    final emailForm = new EmailFormComp();
    final email = await emailForm.showEmailFormDialog(context);
    _add(email);
  }

  Future<void> edit(BuildContext context, int index) async {
    final emailForm = new EmailFormComp(emailEdit: emails[index]);
    final email = await emailForm.showEmailFormDialog(context);
    _edit(email, index);
  }

  @action
  init() {
    if ((coord.emails == null) || (coord.emails.length == 0)) {
      emails = <String>[].asObservable();
    } else {
      emails = coord.emails.asObservable();
    }
    print('emails: $emails');
  }

  @action
  _add(String email) {
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

  @action
  _edit(String email, int index) {
    if (email != null) {
      emails[index] = email;
      print('Email editado');
      coord.emails = emails;
      print('$coord');
    } else {
      print('Email veio Nulo');
    }
  }
}
