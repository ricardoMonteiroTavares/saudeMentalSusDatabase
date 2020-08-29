import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/components/forms/email_form/email_form.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<String> emails = <String>[].asObservable();

  @action
  init() {
    if ((institution.emails == null) || (institution.emails.length == 0)) {
      emails = <String>[].asObservable();
    } else {
      emails = institution.emails;
    }
    print('emails: $emails');
  }

  Future<void> add(BuildContext context) async {
    final emailForm = new EmailFormComp();
    final email = await emailForm.showEmailFormDialog(context);
    _add(email);
  }

  @action
  _add(String email) {
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
