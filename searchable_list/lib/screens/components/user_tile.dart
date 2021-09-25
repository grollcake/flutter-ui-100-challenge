import 'package:flutter/material.dart';
import 'package:searchable_list/model/user.dart';

class UserTile extends StatefulWidget {
  UserTile({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _UserTileState createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  Widget build(BuildContext context) {
    User user = widget.user;

    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(user.picture),
      ),
      title: Text(user.name, style: TextStyle(color: Colors.white)),
      subtitle: Text(user.username, style: TextStyle(color: Colors.grey.shade500)),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            user.isFollowedByMe = !user.isFollowedByMe;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 80,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: user.isFollowedByMe ? Colors.blue[700] : Colors.transparent,
            border:
                user.isFollowedByMe ? Border.all(color: Colors.transparent) : Border.all(color: Colors.grey.shade700),
          ),
          child: user.isFollowedByMe
              ? Text('Followed', style: TextStyle(color: Colors.white), textAlign: TextAlign.center)
              : Text('Follow', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
