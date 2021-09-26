import 'package:dating_app/constants/colors.dart';
import 'package:dating_app/detail/widgets/contact_info.dart';
import 'package:dating_app/detail/widgets/detail_appbar.dart';
import 'package:dating_app/detail/widgets/detail_message.dart';
import 'package:dating_app/models/message.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Message message;

  DetailPage(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimarYDark,
        body: Column(
          children: [
            DetailAppBar(),
            ContactInfo(message),
            Expanded(
              child: DetailMessages(),
            ),
          ],
        ));
  }
}
