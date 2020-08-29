import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class LatInputComp extends StatelessWidget {
  final Controller _controller = new Controller();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) => TextFormField(
                initialValue: _controller.lat,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Latitude'),
                onChanged: _controller.setLat,
                style: Theme.of(context).textTheme.bodyText1,
              )),
    );
  }
}
