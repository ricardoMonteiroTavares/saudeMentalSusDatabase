import 'dart:convert';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
import 'package:saudeMentalSusDatabase/util/setup_locator.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @action
  init(City cityEdit) {
    initCity(cityEdit);
  }

  validate(BuildContext context) {
    var city = GetIt.I.get<City>();
    if ((city.name == null) || (city.name.length <= 2)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Nome do município é inexistente ou pequeno'),
                ),
              ));
    } else if ((city.federationUnity == null) || (city.federationUnity == '')) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Escolha a UF'),
                ),
              ));
    } else if ((city.institutions == null) || (city.institutions.length == 0)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Container(
                  child: Text('Insira pelo menos 1 instituição'),
                ),
              ));
    } else {
      Map<String, dynamic> temp = city.toJson();

      String json = jsonEncode(temp);
      final bytes = utf8.encode(json);
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.document.createElement('a') as html.AnchorElement
        ..href = url
        ..style.display = 'none'
        ..download = '${city.name}-${city.federationUnity}.json';
      html.document.body.children.add(anchor);

      // download
      anchor.click();

      // cleanup
      html.document.body.children.remove(anchor);
      html.Url.revokeObjectUrl(url);
    }
  }
}
