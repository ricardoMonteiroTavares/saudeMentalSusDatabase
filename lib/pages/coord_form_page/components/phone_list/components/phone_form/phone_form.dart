import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class PhoneFormComp {
  final Controller _controller = new Controller();
  showPhoneFormDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Telefone'),
        content: Container(
            child: Form(
                key: _controller.formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Observer(
                      builder: (_) => TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Telefone'),
                            onSaved: _controller.setPhone,
                            validator: _controller.validatePhone,
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
