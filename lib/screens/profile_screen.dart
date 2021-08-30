import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_myself/components/bottom_icon_button.dart';
import 'package:flutter_kakaotalk_myself/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(user.backgroundImage), fit: BoxFit.fitHeight),
      ),
      child: Scaffold(
        appBar: _buildAppBar(),
        backgroundColor: Colors.transparent,
        body: _buildMainStory(),
      ),
    );
  }

  Widget _buildMainStory() {
    return Column(
      children: [
        Spacer(),
        Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(user.backgroundImage),
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              user.intro,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white),
          ],
        ),
        user == me ? _chatWithMe() : _chatWithYou(),
      ],
    );
  }

  Widget _chatWithMe() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            onPressed: () {},
            icon: FontAwesomeIcons.comment,
            text: "나와의 채팅",
          ),
          SizedBox(width: 20),
          BottomIconButton(
            onPressed: () {},
            icon: FontAwesomeIcons.pen,
            text: "프로필 편집",
          ),
        ],
      ),
    );
  }

  Widget _chatWithYou() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            onPressed: () {},
            icon: FontAwesomeIcons.comment,
            text: "1:1 채팅",
          ),
          SizedBox(width: 20),
          BottomIconButton(
            onPressed: () {},
            icon: FontAwesomeIcons.phone,
            text: "통화하기",
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(FontAwesomeIcons.times),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.gift),
        ),
        SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.cog),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
