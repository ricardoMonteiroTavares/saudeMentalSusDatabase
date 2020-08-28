import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/pages/coord_form_page/coord_form_page.dart';
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
                    final coord = await Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => CoordFormPage()));
                    _controller.add(coord);
                  })
            ],
          ),
        ),
        Observer(
            builder: (_) => SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.coords.length,
                    itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.coords[index].toString()),
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
      ],
    );
  }
}
