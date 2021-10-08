import 'package:alert_and_dialogbox/CupertinoAlertBox.dart';
import 'package:alert_and_dialogbox/CustomeDialogBox.dart';
import 'package:alert_and_dialogbox/ListinDialogBox.dart';
import 'package:alert_and_dialogbox/SimpleAlertBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 100.0,
          centerTitle: true,
          title: Column(
            children: [
              Text('ALERT & DIALOG BOX'),
            ],
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 600,
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleAlertDialog();
                        },
                      );
                    },
                    text: 'Simple Dialog Box',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ProfileCheckDialogBox();
                        },
                      );
                    },
                    text: 'Profile In Dialog Box',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoAlertDialogBox();
                        },
                      );
                    },
                    text: 'Cupertino Alert Box',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleAlertbox();
                        },
                      );
                    },
                    text: 'Simple Alert Box',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ListinAlertBox();
                        },
                      );
                    },
                    text: 'List in Dialog Box',
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProfileCheckDialogBox extends StatelessWidget {
  const ProfileCheckDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomeDialogBox();
  }
}

class SimpleAlertDialog extends StatelessWidget {
  const SimpleAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20.0,
      backgroundColor: Colors.black,
      title: Text(
        'Reset settings?',
        style: TextStyle(color: Colors.white),
      ),
      content: Text(
          'This will reset your device to its default factory settings.',
          style: TextStyle(color: Colors.white)),
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
          child: Text('ACCEPT'),
        ),
      ],
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  final Function onclick;
  final String text;
  const ElevatedButtonWidget({
    Key? key,
    required this.onclick,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF6200EE),
        fixedSize: Size(200, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {
        onclick();
      },
      child: Text(text),
    );
  }
}
