import 'package:dating_app/constants/colors.dart';
import 'package:dating_app/models/message.dart';
import 'package:dating_app/models/messagesList.dart';
import 'package:dating_app/screens/widgets/recent_chat.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarYDark,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo3.png',
          height: 80,
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        backgroundColor: kPrimarYDark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Chat with\nyour Connections',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          RecentChats(),
          MessageList(),
        ],
      ),
    );
  }
}
