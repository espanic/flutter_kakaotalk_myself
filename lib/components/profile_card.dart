import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_myself/models/user.dart';
import 'package:flutter_kakaotalk_myself/screens/profile_screen.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(ProfileScreen(user: user));
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          user.backgroundImage,
        ),
        radius: 20,
      ),
      title: Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        user.intro,
        style: TextStyle(fontSize: 12),
      ),
      //contentPadding: EdgeInsets.all(0),
    );
  }
}
