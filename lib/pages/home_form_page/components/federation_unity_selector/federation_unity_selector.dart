import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class FUSelectorComp extends StatelessWidget {
  final Controller _controller = new Controller();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Text(
          'UF:',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          width: 10,
        ),
        Observer(
          builder: (_) => DropdownButton<String>(
            value: _controller.fuSelected,
            items: _controller.getFus(context),
            onChanged: _controller.setFuSelected,
          ),
        ),
      ],
    ));
  }
}
