import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogBox extends StatelessWidget {
  const CupertinoAlertDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Column(
        children: <Widget>[
          Text(" Allow \"Maps\" to access your " +
              " location while you use the " +
              " app? "),
          Icon(
            Icons.place_outlined,
            color: Colors.red,
          ),
        ],
      ),
      content: new Text(
          "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times. "),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("Don\'t Allow"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child: Text("Allow"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
