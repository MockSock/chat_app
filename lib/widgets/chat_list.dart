import 'package:flutter/material.dart';
import '../models/chat.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.chatList,
  });

  final List<Chat> chatList;

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

              return GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  (chatList[index].chatId).toString(),
                  // may need to pass chatList object for displaying all data
                  // arguments: chatList,
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
                          Text(chatList[index].lastUpdated.toString()),
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
