import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_myself/components/chat_card.dart';
import 'package:flutter_kakaotalk_myself/models/chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("채팅"),
      ),
      body: ListView(
        children: List.generate(
            chats.length,
            (index) => Column(
                  children: [
                    ChatCard(chat: chats[index]),
                    index != chats.length - 1
                        ? Divider(
                            color: Colors.white30,
                          )
                        : SizedBox(),
                  ],
                )),
      ),
    );
  }
}
