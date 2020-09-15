import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/entities/reception.dart';
import 'controller.dart';

class AttendanceFormComp {
  final Reception attendanceEdit;
  final Controller _controller = new Controller();

  AttendanceFormComp({this.attendanceEdit});
  showAttendanceFormDialog(BuildContext context) async {
    _controller.init(attendanceEdit);
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Dia e Horário de Antendimento'),
        content: Container(
            child: Form(
                key: _controller.formKey,
                child: SingleChildScrollView(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Observer(
                      builder: (_) => Column(
                            children: _controller.getDays(),
                          )),
                  Observer(
                    builder: (_) => Visibility(
                        visible: _controller.checkboxError,
                        child: Row(
                          children: [
                            Text(
                              'Selecione ao menos 1 dia da semana',
                              style: TextStyle(
                                  color: Color(0xffd3332f), fontSize: 12),
                              textAlign: TextAlign.start,
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Observer(
                      builder: (_) => TextFormField(
                            initialValue: _controller.openingHour,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Hora de Abertura'),
                            onChanged: _controller.setOpeningHour,
                            onSaved: _controller.setOpeningHour,
                            validator: _controller.validateHour,
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(
                      builder: (_) => TextFormField(
                            initialValue: _controller.closingHour,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Hora de Fechamento'),
                            onChanged: _controller.setClosingHour,
                            onSaved: _controller.setClosingHour,
                            validator: _controller.validateClosingHour,
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                ])))),
        actions: [
          FlatButton(
              child: Text('CONFIRMAR'),
              onPressed: () {
                _controller.submit(context);
              })
        ],
      ),
    );
  }
}
