import 'package:flutter/material.dart';
import '../models/user.dart';

class ChatList extends StatelessWidget {
  ChatList({
    Key? key,
    required this.chatList,
  }) : super(key: key);
  // Dummy data
  final List<User> chatList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Divider(color: Theme.of(context).dividerColor);
              }

              return Card(
                elevation: 4.0,
                color: Theme.of(context).primaryColor,
                shadowColor: Theme.of(context).shadowColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(chatList[index].userName),
                        // Will show time later
                        const Text('123'),
                      ],
                    ),
                    const Text('I would be a message!'),
                  ],
                ),
              );
            })
      ],
    );
  }
}
