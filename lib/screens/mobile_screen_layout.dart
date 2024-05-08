import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              'Whatsapp',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          body: const ContactsList(),
          bottomNavigationBar: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'Sohbetler',
                icon: Icon(Icons.message),
              ),
              Tab(
                text: 'Güncellemeler',
                icon: Icon(Icons.all_inbox_sharp),
              ),
              Tab(
                  text: 'Topluluklar',
                  icon: Icon(
                    Icons.people,
                  )),
              Tab(
                text: 'Aramalar',
                icon: Icon(Icons.call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
