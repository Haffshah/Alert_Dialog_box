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
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButtonWidget(
                    onclick: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return  ListinAlertBox();
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

class ListinAlertBox extends StatefulWidget {
  const ListinAlertBox({
    Key? key,
  }) : super(key: key);

  @override
  _ListinAlertBoxState createState() => _ListinAlertBoxState();
}

class _ListinAlertBoxState extends State<ListinAlertBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor: Colors.white,contentPadding: EdgeInsetsDirectional.all(10.0),
      title:Text("Phone Ringtone"),
      buttonPadding: EdgeInsetsDirectional.all(10.0),content: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(

            leading: Radio(
            value: isSelected,
              groupValue: 1,
              onChanged: (_) {
              setState(() {
                isSelected = value;
              });
              },
            ),
            title: Text('On&on Will go') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Memories') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),  ListTile(
            leading: Radio(
              value: Text('Phantom') ,
              groupValue: 1,
              onChanged: (_) {},
            ),
            title: Text('Phantom') ,
          ),
        ],
    ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)),
      elevation: 20.0,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
              primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCEL'),
        ),
        TextButton(
          style: TextButton.styleFrom(
              primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

class SimpleAlertbox extends StatelessWidget {
  const SimpleAlertbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orangeAccent,
      title: Text('Discard Drafts?'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)),
      elevation: 20.0,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
              primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCEL'),
        ),
        TextButton(
          style: TextButton.styleFrom(
              primary: Color(0xFF6200EE)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('DISCARD'),
        ),
      ],
    );
  }
}

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

class ProfileCheckDialogBox extends StatelessWidget {
  const ProfileCheckDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomeDialogBox();
  }
}

class CustomeDialogBox extends StatelessWidget {
  const CustomeDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Set backup account'),
      children: [
        SimpleDialogOption(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Text(''),
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Oluaamtem7786@gmail.com'),
              ],
            ),
          ),
          onPressed: () {
            Navigator.pop(context, 'Oluaamtem7786@gmail.com');
          },
        ),
        SimpleDialogOption(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Text(''),
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('aemnem7786@gmail.com'),
              ],
            ),
          ),
          onPressed: () {
            Navigator.pop(context, 'aemnem7786@gmail.com');
          },
        ),
        SimpleDialogOption(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://cdn4.iconfinder.com/data/icons/single-width-stroke/24/oui-icons-21-512.png'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Add account'),
              ],
            ),
          ),
          onPressed: () {
            Navigator.pop(context, 'Add account Details');
          },
        ),
      ],
    );
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
