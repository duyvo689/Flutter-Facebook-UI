import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  final User currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(currentUser.imageUrl),
            ),
            const SizedBox(
              width: 8,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: 'What\'s on your mind?'),
              ),
            ),
          ],
        ),
        const Divider(
          height: 10.0,
          thickness: 0.5,
        ),
        Container(
          height: 40.0,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FlatButton.icon(
              onPressed: () => print('Live'),
              icon: Icon(
                Icons.videocam,
                color: Colors.red,
              ),
              label: Text('Live'),
            ),
            const VerticalDivider(width: 8.0),
            FlatButton.icon(
              onPressed: () => print('Photo'),
              icon: Icon(
                Icons.photo_library,
                color: Colors.green,
              ),
              label: Text('Photo'),
            ),
            const VerticalDivider(width: 8.0),
            FlatButton.icon(
              onPressed: () => print('Live'),
              icon: Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              label: Text('Room'),
            ),
          ]),
        ),
      ]),
    );
  }
}
