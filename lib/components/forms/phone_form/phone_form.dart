import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class PhoneFormComp {
  final String phoneEdit;
  final Controller _controller = new Controller();

  PhoneFormComp({this.phoneEdit});
  showPhoneFormDialog(BuildContext context) async {
    _controller.init(phoneEdit);

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
                            initialValue: _controller.phone,
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
