import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_myself/models/chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatRoomScreen extends StatefulWidget {
  final Chat chat;

  const ChatRoomScreen(this.chat);
  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState(chat);
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final Chat chat;

  _ChatRoomScreenState(this.chat);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(context),
        body: ListView(
          children: [],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        chat.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        Icon(FontAwesomeIcons.search, size: 20),
        SizedBox(width: 25),
        Icon(FontAwesomeIcons.bars, size: 20),
        SizedBox(width: 25),
      ],
    );
  }
}
