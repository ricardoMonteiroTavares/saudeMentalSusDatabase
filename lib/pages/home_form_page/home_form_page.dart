import 'package:flutter/material.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';

import 'components/city_input/city_input.dart';
import 'components/federation_unity_selector/federation_unity_selector.dart';
import 'components/institutions_list/institutions_list.dart';
import 'controller.dart';

class HomeFormPage extends StatefulWidget {
  final City cityEdit;

  const HomeFormPage({Key key, this.cityEdit}) : super(key: key);
  @override
  _HomeFormPageState createState() => _HomeFormPageState();
}

class _HomeFormPageState extends State<HomeFormPage> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init(widget.cityEdit);
    super.initState();
  }

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
        body: SingleChildScrollView(
          child: Container(
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
          ),
        ));
  }
}
