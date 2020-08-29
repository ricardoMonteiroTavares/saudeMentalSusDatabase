import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/address.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/util/setup_locator.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @action
  init(Institution institutionEdit) {
    // Condição para criar uma nova Instituição e um novo Endereço
    if (institutionEdit == null) {
      resetInstitution();
      resetAddress();
      // Condição para editar uma Instituição e um Endereço já existente
    } else {
      var institution = GetIt.I.get<Institution>();
      institution = institutionEdit;
      var address = GetIt.I.get<Address>();
      address = institutionEdit.address;
    }
  }

  validate(BuildContext context) {
    var institution = GetIt.I.get<Institution>();
    var address = GetIt.I.get<Address>();
    if ((institution.name == null) || (institution.name.length < 3)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Nome Inexistente ou pequeno'),
                ),
              ));
    } else if (institution.institutionType == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Selecione um tipo de instituição'),
                ),
              ));
    } else if ((address.street == null) || (address.street.length <= 2)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Rua Inexistente ou pequeno'),
                ),
              ));
    } else if ((address.district == null) || (address.district.length <= 2)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Bairro Inexistente ou pequeno'),
                ),
              ));
    } else if ((address.houseNumber == null) || (address.houseNumber == '')) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Número da instituição Inexistente'),
                    Text('Obs.: Caso não exista número, insira S/N'),
                  ],
                )),
              ));
    } else if (address.lat == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Latitude Inválido'),
                ),
              ));
    } else if (address.long == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Longitude Inválido'),
                ),
              ));
    } else if ((institution.regions == null) || (institution.regions == '')) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Insira pelo menos uma região atendida'),
                ),
              ));
    } else if ((institution.coords == null) ||
        (institution.coords.length == 0)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Insira pelo menos 1 coordenador'),
                ),
              ));
    } else if ((institution.reception == null) ||
        (institution.reception.length == 0)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child:
                      Text('Insira pelo menos 1 dia e horário de atendimento'),
                ),
              ));
    } else {
      institution.address = address;

      if (institution.emails == null) {
        institution.emails = [];
      }

      if (institution.phones == null) {
        institution.phones = [];
      }
      Navigator.of(context).pop(institution);
    }
  }
}
