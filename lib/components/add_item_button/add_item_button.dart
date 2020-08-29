import 'package:flutter/material.dart';

class AddItemButtonComp extends StatelessWidget {
  final VoidCallback onPressed;

  const AddItemButtonComp({Key key, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
        onPressed: onPressed);
  }
}
