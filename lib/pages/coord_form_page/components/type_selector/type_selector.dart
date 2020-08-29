import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class TypeSelectorComp extends StatefulWidget {
  @override
  _TypeSelectorCompState createState() => _TypeSelectorCompState();
}

class _TypeSelectorCompState extends State<TypeSelectorComp> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) => Column(
                  children: List.from([
                Text(
                  'Tipo de Coordenador',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ]..addAll(
                      _controller.radioOptions(context),
                    )))),
    );
  }
}
