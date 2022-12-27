import 'package:flutter/material.dart';
import 'package:new_course/model/user/userModel.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);

  List<UserModel> users = [
    UserModel(id: 1, name: 'Sahar Akbik', phone: '+96279935788'),
    UserModel(id: 2, name: 'Maya Emad', phone: '+96271562455'),
    UserModel(id: 3, name: 'Laila Erfan', phone: '+96279621486'),
    UserModel(id: 4, name: 'Nadia Faouri', phone: '+96214523745'),
    UserModel(id: 5, name: 'mohammed tal', phone: '+96124579632'),
    UserModel(id: 6, name: 'Ayham Mohammed', phone: '+96798653158'),
    UserModel(id: 7, name: 'Analeen Saed', phone: '+96273254788'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('users'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) {
              return buildUser(users[i]);
            },
            separatorBuilder: (context, i) {
              return Container(
                margin: const EdgeInsets.only(left: 20.0),
                height: 1.0,
                color: Colors.grey[300],
                width: double.infinity,
              );
            },
            itemCount: users.length));
  }

  Widget buildUser(UserModel users) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
           CircleAvatar(
            radius: 25.0,
            child: Text(
              '${users.id}',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                users.name,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                users.phone,
                style: const TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
