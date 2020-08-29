import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/add_item_button/add_item_button.dart';
import 'package:saudeMentalSusDatabase/components/edit_delete_buttons/edit_delete_buttons.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'controller.dart';

class CoordListComp extends StatelessWidget {
  final Controller _controller = new Controller();
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
                          title: Text(_controller.getByIndex(index).name),
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
