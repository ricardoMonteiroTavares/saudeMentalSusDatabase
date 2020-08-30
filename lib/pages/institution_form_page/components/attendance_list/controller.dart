import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';

import 'components/attendance_form/attendance_form.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var institution = GetIt.I.get<Institution>();

  @observable
  ObservableList<Reception> reception;

  Future<void> add(BuildContext context) async {
    final attendanceForm = new AttendanceFormComp();
    final attendance = await attendanceForm.showAttendanceFormDialog(context);
    _add(attendance);
  }

  Future<void> edit(BuildContext context, int index) async {
    final attendanceForm =
        new AttendanceFormComp(attendanceEdit: reception[index]);
    final attendance = await attendanceForm.showAttendanceFormDialog(context);
    _edit(attendance, index);
  }

  @action
  init() {
    if ((institution.reception == null) ||
        (institution.reception.length == 0)) {
      reception = <Reception>[].asObservable();
    } else {
      reception = institution.reception;
    }
    print('Atendimentos: $reception');
  }

  @action
  _add(Reception attendance) {
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
  _edit(Reception attendance, int index) {
    if (attendance != null) {
      reception[index] = attendance;
      print('Editado');
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
