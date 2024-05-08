import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          var user = info[index];
          return InkWell(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                title: Text(
                  user['name'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    user['message'].toString(),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    user['profilePic'].toString(),
                  ),
                ),
                trailing: Text(
                  user['time'].toString(),
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
