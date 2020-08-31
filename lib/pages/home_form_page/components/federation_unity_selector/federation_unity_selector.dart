import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

class FUSelectorComp extends StatefulWidget {
  @override
  _FUSelectorCompState createState() => _FUSelectorCompState();
}

class _FUSelectorCompState extends State<FUSelectorComp> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init();
    super.initState();
  }

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
