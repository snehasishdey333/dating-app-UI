import 'package:dating_app/constants/colors.dart';
import 'package:dating_app/models/user.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  final chatList = User.generateUsers();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              right: 15,
            ),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: chatList[index].bgColor,
                        shape: BoxShape.circle,
                      ),

                      child:
                       Image.asset(
                        chatList[index].iconUrl,
                        width: 40,
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: chatList.length),
          )
        ],
      ),
    );
  }
}
