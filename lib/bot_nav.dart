import 'package:bot_nav_with_provider_example/bot_nav_provider.dart';
import 'package:bot_nav_with_provider_example/chat.dart';
import 'package:bot_nav_with_provider_example/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BotNav extends StatelessWidget {
  BotNav({Key? key}) : super(key: key);

  final List<Widget> _bodys = [
    HomeBody(),
    ChatBody(),
    Container(
      child: Center(child: Text('Profile')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _index = Provider.of<BotNavProvider>(context).index;
    return Scaffold(
      body: _bodys.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => context.read<BotNavProvider>().index = index,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'profile'),
          ]),
    );
  }
}
