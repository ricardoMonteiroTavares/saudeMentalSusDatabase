import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class EmailFormComp {
  final String emailEdit;
  final Controller _controller = new Controller();

  EmailFormComp({this.emailEdit});
  showEmailFormDialog(BuildContext context) async {
    _controller.init(emailEdit);

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Email'),
        content: Container(
            child: Form(
                key: _controller.formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Observer(
                      builder: (_) => TextFormField(
                            initialValue: _controller.email,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email'),
                            onSaved: _controller.setEmail,
                            validator: _controller.validateEmail,
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                ]))),
        actions: [
          FlatButton(
              child: Text('CONFIRMAR'),
              onPressed: () {
                _controller.submit(context);
              })
        ],
      ),
    );
  }
}
