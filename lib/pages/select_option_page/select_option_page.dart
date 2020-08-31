import 'package:flutter/material.dart';

import 'controller.dart';

class SelectOptionPage extends StatelessWidget {
  final Controller _controller = new Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Selecione uma opção',
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add,
                      size: 200,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      'Novo',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                onPressed: () async => _controller.newData(context),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.folder_open,
                      size: 200,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      'Carregar',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                onPressed: () async => _controller.loadData(context),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
