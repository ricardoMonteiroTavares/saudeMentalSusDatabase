import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';
import 'controller.dart';

class EmailListComp extends StatefulWidget {
  @override
  _EmailListCompState createState() => _EmailListCompState();
}

class _EmailListCompState extends State<EmailListComp> {
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
                'Emails',
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
                    itemCount: _controller.emails.length,
                    itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.getbyIndex(index)),
                          trailing: EditDeleteButtons(
                            deleteFunction: () => _controller.remove(index),
                            editFunction: () =>
                                _controller.edit(context, index),
                          ),
                        ))))
      ],
    );
  }
}
