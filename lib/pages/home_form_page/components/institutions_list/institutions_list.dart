import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/pages/institution_form_page/institution_form_page.dart';

import 'controller.dart';

class InstitutionListComp extends StatelessWidget {
  final Controller _controller = new Controller();
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
            RaisedButton(
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Theme.of(context).buttonColor,
                    ),
                    Text(
                      'ADICIONAR',
                      style: TextStyle(color: Theme.of(context).buttonColor),
                    )
                  ],
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () async {
                  final institution = await Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => InstitutionFormPage()));
                  _controller.add(institution);
                })
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
                        trailing: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            _controller.remove(index);
                          },
                        ),
                      ))))
    ]);
  }
}
