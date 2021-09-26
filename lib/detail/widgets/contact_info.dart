import 'package:dating_app/models/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  late final Message message;
  ContactInfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${message.user.firstName}\n${message.user.lastName}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              height: 1.2,
            ),
          ),
          Row(
            children: [
              _buildCallButton(Icons.phone),
              SizedBox(
                width: 10,
              ),
              _buildCallButton(Icons.video_call),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCallButton(IconData icondata) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icondata,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
