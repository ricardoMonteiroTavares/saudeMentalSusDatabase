import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'components/attendance_form/attendance_form.dart';
import 'controller.dart';

class AttendanceListComp extends StatelessWidget {
  final Controller _controller = new Controller();
  final attendanceForm = new AttendanceFormComp();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dias e Horários de Atendimento',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              RaisedButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Theme.of(context).buttonColor,
                      ),
                      Text(
                        'ADICIONAR',
                        style: TextStyle(color: Theme.of(context).buttonColor),
                      )
                    ],
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () async {
                    final attendance =
                        await attendanceForm.showAttendanceFormDialog(context);
                    _controller.add(attendance);
                  })
            ],
          ),
        ),
        Observer(
            builder: (_) => SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.reception.length,
                    itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.reception[index].toString()),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {
                              _controller.remove(index);
                            },
                          ),
                        ))))
      ],
    );
  }
}
