import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'components/email_form/email_form.dart';
import 'controller.dart';

class EmailListComp extends StatelessWidget {
  final Controller _controller = new Controller();
  final emailForm = new EmailFormComp();
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
                'Emails',
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
                    final email = await emailForm.showEmailFormDialog(context);
                    _controller.add(email);
                  })
            ],
          ),
        ),
        Observer(
            builder: (_) => SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.emails.length,
                    itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.emails[index]),
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
