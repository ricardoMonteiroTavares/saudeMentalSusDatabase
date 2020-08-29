import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';
import 'controller.dart';

class PhoneListComp extends StatefulWidget {
  @override
  _PhoneListCompState createState() => _PhoneListCompState();
}

class _PhoneListCompState extends State<PhoneListComp> {
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
                'Telefones',
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
                    itemCount: _controller.phones.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        title: Text(_controller.getbyIndex(index)),
                        trailing: EditDeleteButtons(
                          deleteFunction: () => _controller.remove(index),
                          editFunction: () => _controller.edit(context, index),
                        ),
                      );
                    })))
      ],
    );
  }
}
