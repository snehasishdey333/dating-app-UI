import 'package:flutter/material.dart';

class User {
  late num id;
  late String firstName;
  String lastName;
  late String iconUrl;
  late Color bgColor;
  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  static List<User> generateUsers() {
    return [
      User(1, 'Susan', 'White', 'assets/images/1.png', Colors.yellow),
      User(2, 'Jane', 'Robert', 'assets/images/2.png', Colors.orange),
      User(3, 'Rocky', 'Lux', 'assets/images/3.png', Colors.lightBlue),
      User(4, 'Sam', 'Smith', 'assets/images/4.png', Colors.green),
      User(5, 'Eleven', 'Stark', 'assets/images/5.png', Colors.grey),
      User(6, 'Betty', 'Ross', 'assets/images/6.png', Colors.purple),
      User(
          7, 'Victoria', 'Wood', 'assets/images/7.png', Colors.lightBlueAccent),
    ];
  }
}
