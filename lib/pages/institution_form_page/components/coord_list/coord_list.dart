import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';
import 'controller.dart';

class CoordListComp extends StatefulWidget {
  @override
  _CoordListCompState createState() => _CoordListCompState();
}

class _CoordListCompState extends State<CoordListComp> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Coordenadores',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              AddItemButtonComp(
                onPressed: () async => _controller.add(context),
              )
            ],
          ),
        ),
        Observer(
            builder: (_) => SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.coords.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                          title: Text(_controller.coords[index].name),
                          trailing: EditDeleteButtons(
                            editFunction: () =>
                                _controller.edit(context, index),
                            deleteFunction: () => _controller.remove(index),
                          ));
                    })))
      ],
    );
  }
}
