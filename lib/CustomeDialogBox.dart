import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          padding: const EdgeInsets.all(15.0),
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
              Text(
                'Oluaamtem7786@gmail.com',
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          onPressed: () {
            Navigator.pop(context, 'Oluaamtem7786@gmail.com');
          },
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.all(15.0),
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
          onPressed: () {
            Navigator.pop(context, 'aemnem7786@gmail.com');
          },
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.all(15.0),
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
          onPressed: () {
            Navigator.pop(context, 'Add account Details');
          },
        ),
      ],
    );
  }
}
