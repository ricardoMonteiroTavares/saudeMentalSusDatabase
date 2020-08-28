import 'package:flutter/material.dart';

import 'components/city_input/city_input.dart';
import 'components/federation_unity_selector/federation_unity_selector.dart';
import 'components/institutions_list/institutions_list.dart';
import 'controller.dart';

class HomeFormPage extends StatelessWidget {
  final Controller _controller = new Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Instituições'),
          actions: [
            MaterialButton(
                elevation: 0,
                child: Text(
                  'DESCARREGAR',
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  return _controller.validate(context);
                })
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              FUSelectorComp(),
              SizedBox(
                height: 5,
              ),
              CityInputComp(),
              SizedBox(
                height: 30,
              ),
              InstitutionListComp()
            ],
          ),
        ));
  }
}
