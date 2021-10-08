import 'package:flutter/material.dart';

class ListinAlertBox extends StatefulWidget {
  const ListinAlertBox({
    Key? key,
  }) : super(key: key);

  @override
  _ListinAlertBoxState createState() => _ListinAlertBoxState();
}

class _ListinAlertBoxState extends State<ListinAlertBox> {
  late int SelectedRadio;
  @override
  void initState() {
    super.initState();
    SelectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      SelectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsetsDirectional.all(5.0),
      title: Text("Phone Ringtone"),
      buttonPadding: EdgeInsetsDirectional.all(5.0),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(1);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 1,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('On&on Will go'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(2);
                });
              },
              leading: Radio(
                value: 2,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Memories'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(3);
                });
              },
              leading: Radio(
                value: 3,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Phantom'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(4);
                });
              },
              leading: Radio(
                value: 4,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Alone'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(5);
                });
              },
              leading: Radio(
                value: 5,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Alone pt.II'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(6);
                });
              },
              leading: Radio(
                value: 6,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('My Darling You & I'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(7);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 7,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Beliver'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(8);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 8,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Thunder'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(9);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 9,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('On my Way'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(10);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 10,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Americana'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(11);
                });
              },
              leading: Radio(
                value: 11,
                activeColor: Colors.purple,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Phantom'),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  setSelectedRadio(12);
                });
              },
              leading: Radio(
                activeColor: Colors.purple,
                value: 12,
                groupValue: SelectedRadio,
                onChanged: (_) {},
              ),
              title: Text('Make You Mine'),
            ),
          ],
        ),
      ),
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
          child: Text('OK'),
        ),
      ],
    );
  }
}
