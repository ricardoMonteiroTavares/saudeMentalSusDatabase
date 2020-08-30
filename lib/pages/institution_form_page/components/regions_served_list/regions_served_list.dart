import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saudeMentalSusDatabase/components/buttons/buttons.dart';
import 'controller.dart';

class RegionsServedListComp extends StatefulWidget {
  @override
  _RegionsServedListCompState createState() => _RegionsServedListCompState();
}

class _RegionsServedListCompState extends State<RegionsServedListComp> {
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
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Regões Atendidas',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Observer(
            builder: (_) => TextField(
                  controller: _controller.editingController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.add, color: Colors.green),
                        onPressed: _controller.add,
                      )),
                  onChanged: _controller.setRegionName,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
        Observer(
            builder: (_) => SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.regions.length,
                    itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.regions[index].name),
                          trailing: EditDeleteButtons(
                            deleteFunction: () => _controller.remove(index),
                          ),
                        )))),
      ],
    );
  }
}
