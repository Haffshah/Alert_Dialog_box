import 'package:flutter/material.dart';

class SimpleAlertbox extends StatelessWidget {
  const SimpleAlertbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orangeAccent,
      title: Text('Discard Drafts?'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 20.0,
      actions: [
        TextButton(
          style: TextButton.styleFrom(primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCEL'),
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('DISCARD'),
        ),
      ],
    );
  }
}
