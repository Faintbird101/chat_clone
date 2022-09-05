import 'package:chat_clone/widgets/favorite.dart';
import 'package:flutter/material.dart';
import '../widgets/category_selector.dart';
import '../widgets/recentchats.dart';

class SignIn_page extends StatefulWidget {
  const SignIn_page({Key? key}) : super(key: key);

  @override
  State<SignIn_page> createState() => _SignIn_pageState();
}

class _SignIn_pageState extends State<SignIn_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Column(children: const [
                FavoriteContacts(),
                RecentChats(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
