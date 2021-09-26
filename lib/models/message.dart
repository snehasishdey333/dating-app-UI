import 'package:dating_app/models/user.dart';
import 'package:flutter/material.dart';

class Message {
  late User user;
  late String lastMessage;
  late String lastTime;
  late bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generateHomePageMessage() {
    return [
      Message(users[0], 'Hey! what are you doing? why are not you replying!!',
          '17:52'),
      Message(users[1], 'Hey! what are you doing? lets meet tomorrow', '17:32'),
      Message(users[2], 'Good Night,see you tomorrow at tuition,haha', '00:45'),
      Message(users[3], 'cant talk now.i will call you later,i am in a meeting',
          '19:12'),
      Message(
          users[4], 'see you soon,please come at my birthday,woho!!', '08:35'),
      Message(users[5],
          'how is your mom?,i heard she went to your grandmas house', '15:23'),
      Message(
        users[6],
        'where are you? i was waiting for you since 2 hours',
        '18:09',
      ),
    ];
  }

  static List<Message> generateMessageFromUser() {
    return [
      Message(users[0], 'Hey! How are you?', '17:35'),
      Message(me, 'I am fine,what about you?', '17:36'),
      Message(
          users[0],
          'I am good,did you submitted the assignent about fluid mechanics?',
          '17:38'),
      Message(me, 'No! I forgot! omg!', '17:39'),
      Message(users[0], 'how could you?', '17:40'),
      Message(users[0], 'it was important for us', '17:40', isContinue: true),
      Message(me, 'I do not know! what to do now?', '17:41'),
      Message(
          users[0],
          'I think you should contact teacher and apologize about it and take some time to submit it',
          '17:45'),
      Message(me, 'Do you think its going to work?', '17:48'),
      Message(me, '; - (', '17:49', isContinue: true),
      Message(users[0], 'may be', '17:50'),
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Snehasish', 'Dey', 'assets/images/2.png', Colors.red);
