import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebChatAppBar extends StatelessWidget {
  final Map<String, String> user;
  const WebChatAppBar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListTile(
        
        title: Text(
          user['name'].toString(),
          style: const TextStyle(fontSize: 15),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              user['profilePic'].toString(),
            ),
          ),
        ),
      ),
    );
  }
}
