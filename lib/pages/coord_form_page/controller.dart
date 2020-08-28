import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/util/setup_locator.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @action
  init() {
    resetCoord();
  }

  validate(BuildContext context) {
    var coord = GetIt.I.get<Coord>();
    //print(coord);
    if ((coord.name == null) || (coord.name.length < 3)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Nome Inexistente ou pequeno'),
                ),
              ));
    } else if (coord.coordType == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Selecione um tipo de coordenador'),
                ),
              ));
    } else {
      if (coord.emails == null) {
        coord.emails = [];
      }

      if (coord.phones == null) {
        coord.phones = [];
      }
      Navigator.of(context).pop(coord);
    }
  }
}
