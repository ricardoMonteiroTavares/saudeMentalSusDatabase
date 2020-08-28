import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class NameInputComp extends StatelessWidget {
  final Controller _controller = new Controller();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: true,
      child: Container(
        child: Observer(
            builder: (_) => TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nome'),
                  onChanged: _controller.setName,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
      ),
    );
  }
}
