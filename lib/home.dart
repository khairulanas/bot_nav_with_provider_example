import 'package:bot_nav_with_provider_example/bot_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Home'),
          ElevatedButton(
              // ---------------------------------------------------> 1 adalah index dari scrren chat
              onPressed: () => context.read<BotNavProvider>().index = 1,
              child: Text('go to chat screen'))
        ],
      ),
    );
  }
}
