import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class TypeSelectorComp extends StatelessWidget {
  final Controller _controller = new Controller();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) => Column(
                  children: List.from([
                Text(
                  'Tipo de Instituição',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ]..addAll(
                      _controller.radioOptions(context),
                    )))),
    );
  }
}
