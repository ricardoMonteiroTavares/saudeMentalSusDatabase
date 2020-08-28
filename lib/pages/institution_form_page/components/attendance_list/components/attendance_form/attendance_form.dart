import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class AttendanceFormComp {
  final Controller _controller = new Controller();
  showAttendanceFormDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Dia e Horário de Antendimento'),
        content: Container(
            child: Form(
                key: _controller.formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Observer(
                      builder: (_) => Container(
                              child: Row(
                            children: [
                              Text(
                                'Dia da Semana:',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Observer(
                                builder: (_) => DropdownButton<String>(
                                  value: _controller.daySelected,
                                  items: _controller.getDays(context),
                                  onChanged: _controller.setDaySelected,
                                ),
                              ),
                            ],
                          ))),
                  Observer(
                      builder: (_) => TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Hora de Abertura'),
                            onSaved: _controller.setOpeningHour,
                            validator: _controller.validateHour,
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(
                      builder: (_) => TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Hora de Fechamento'),
                            onSaved: _controller.setClosingHour,
                            validator: _controller.validateHour,
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                ]))),
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
