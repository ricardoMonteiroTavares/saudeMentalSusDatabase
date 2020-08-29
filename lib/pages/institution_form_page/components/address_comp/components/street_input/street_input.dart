import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class StreetInputComp extends StatelessWidget {
  final Controller _controller = new Controller();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) => TextFormField(
                initialValue: _controller.street,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Rua'),
                onChanged: _controller.setStreet,
                style: Theme.of(context).textTheme.bodyText1,
              )),
    );
  }
}
