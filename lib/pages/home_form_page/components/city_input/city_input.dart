import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class CityInputComp extends StatelessWidget {
  final Controller _controller = new Controller();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) => TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Município'),
                onChanged: _controller.setCity,
                style: Theme.of(context).textTheme.bodyText1,
              )),
    );
  }
}
