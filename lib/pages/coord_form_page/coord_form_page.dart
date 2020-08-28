import 'package:flutter/material.dart';
import 'components/email_list/email_list.dart';
import 'components/name_input/name_input.dart';
import 'components/phone_list/phone_list.dart';
import 'components/type_selector/type_selector.dart';
import 'controller.dart';

class CoordFormPage extends StatefulWidget {
  @override
  _CoordFormPageState createState() => _CoordFormPageState();
}

class _CoordFormPageState extends State<CoordFormPage> {
  final Controller _controller = new Controller();
  @override
  void initState() {
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Coordenador'),
        actions: [
          MaterialButton(
              elevation: 0,
              child: Text(
                'SALVAR',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                _controller.validate(context);
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            NameInputComp(),
            SizedBox(
              height: 10,
            ),
            TypeSelectorComp(),
            SizedBox(
              height: 10,
            ),
            PhoneListComp(),
            SizedBox(
              height: 10,
            ),
            EmailListComp()
          ],
        ),
      ),
    );
  }
}
