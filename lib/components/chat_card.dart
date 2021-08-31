import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_myself/models/chat.dart';
import 'package:flutter_kakaotalk_myself/screens/chat_room_screen.dart';
import 'package:get/get.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;

  const ChatCard({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              onTap: () {
                Get.to(() => ChatRoomScreen(chat));
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  chat.image,
                ),
                radius: 20,
              ),
              title: Text(
                chat.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                chat.content,
                maxLines: 1,
                style: TextStyle(fontSize: 12),
              ),
              //contentPadding: EdgeInsets.all(0),
            ),
          ),
          Column(
            children: [
              Text(
                chat.time,
                style: TextStyle(color: Color(0xFFa5a5a5), fontSize: 15),
              ),
              SizedBox(height: 5),
              chat.count != "0"
                  ? Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        chat.count,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  : SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
