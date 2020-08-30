import 'package:flutter/material.dart';
import 'package:saudeMentalSusDatabase/entities/address.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';
import 'package:saudeMentalSusDatabase/pages/institution_form_page/components/type_selector/type_selector.dart';

import 'components/address_comp/adress_comp.dart';
import 'components/attendance_list/attendance_list.dart';
import 'components/coord_list/coord_list.dart';
import 'components/email_list/email_list.dart';
import 'components/name_input/name_input.dart';
import 'components/phone_list/phone_list.dart';
import 'components/regions_served_list/regions_served_list.dart';
import 'controller.dart';

class InstitutionFormPage extends StatefulWidget {
  final Institution institutionEdit;

  const InstitutionFormPage({Key key, this.institutionEdit}) : super(key: key);
  @override
  _InstitutionFormPageState createState() => _InstitutionFormPageState();
}

class _InstitutionFormPageState extends State<InstitutionFormPage> {
  final Controller _controller = new Controller();

  @override
  void initState() {
    _controller.init(widget.institutionEdit);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Instituição'),
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
      body: SingleChildScrollView(
        child: Container(
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
              AddressComp(),
              SizedBox(
                height: 10,
              ),
              PhoneListComp(),
              SizedBox(
                height: 10,
              ),
              EmailListComp(),
              SizedBox(
                height: 20,
              ),
              RegionsServedListComp(),
              SizedBox(
                height: 10,
              ),
              CoordListComp(),
              SizedBox(
                height: 10,
              ),
              AttendanceListComp()
            ],
          ),
        ),
      ),
    );
  }
}
