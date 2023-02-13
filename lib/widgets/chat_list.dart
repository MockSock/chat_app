import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/chat.dart';
import 'chat_screen.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatListData = Provider.of<Chat>(context);
    final chatList = chatListData;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Will need to change to a stream builder once firebase is set up
        ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Divider(color: Theme.of(context).dividerColor);
              }

              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                        chatId: chatList[index].chatId.toString(),
                        chatName: chatList[index].chatName),
                  ),
                ),
                child: Card(
                  elevation: 4.0,
                  color: Theme.of(context).primaryColor,
                  shadowColor: Theme.of(context).shadowColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(chatList[index].chatName),
                          // Shows time of last text
                          // Text(chatList[index].lastUpdated.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
