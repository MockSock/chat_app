import 'package:flutter/material.dart';
import '../models/user.dart';

class ChatList extends StatelessWidget {
  // Dummy data
  final List<User> userList = [
    User(
      userId: 24601,
      userName: 'ValjeansOnSale',
    ),
    User(
      userId: 43324,
      userName: '404NeverFound',
    ),
    User(
      userId: 20202,
      userName: 'BackToBackFutureInc',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              if (index.isOdd) return const Divider();

              return Card(
                elevation: 4.0,
                color: Theme.of(context).primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const [
                        Text('Test'),
                        Text('123'),
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
