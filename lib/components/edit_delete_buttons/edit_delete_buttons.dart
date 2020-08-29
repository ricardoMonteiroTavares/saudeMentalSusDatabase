import 'package:flutter/material.dart';

class EditDeleteButtons extends StatelessWidget {
  final VoidCallback deleteFunction, editFunction;

  const EditDeleteButtons(
      {Key key, @required this.deleteFunction, this.editFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: (editFunction != null),
          child: IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.blueAccent,
            ),
            onPressed: editFunction,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.redAccent,
          ),
          onPressed: deleteFunction,
        )
      ],
    );
  }
}
