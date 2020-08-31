import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';

import 'controller.dart';

class InstitutionListComp extends StatefulWidget {
  @override
  _InstitutionListCompState createState() => _InstitutionListCompState();
}

class _InstitutionListCompState extends State<InstitutionListComp> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instituições',
              style: Theme.of(context).textTheme.bodyText2,
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
                  itemCount: _controller.institutions.length,
                  itemBuilder: (_, index) => ListTile(
                      title: Text(_controller.institutions[index].name),
                      trailing: EditDeleteButtons(
                        deleteFunction: () => _controller.remove(index),
                        editFunction: () => _controller.edit(context, index),
                      )))))
    ]);
  }
}
