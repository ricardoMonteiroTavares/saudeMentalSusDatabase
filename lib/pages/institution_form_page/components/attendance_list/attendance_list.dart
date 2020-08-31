import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';
import 'controller.dart';

class AttendanceListComp extends StatefulWidget {
  @override
  _AttendanceListCompState createState() => _AttendanceListCompState();
}

class _AttendanceListCompState extends State<AttendanceListComp> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init();
    super.initState();
  }

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
              AddItemButtonComp(
                onPressed: () async => _controller.add(context),
              )
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
                      trailing: EditDeleteButtons(
                        deleteFunction: () => _controller.remove(index),
                        editFunction: () => _controller.edit(context, index),
                      )),
                )))
      ],
    );
  }
}
