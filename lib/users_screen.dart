import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({required this.id, required this.name, required this.phone});
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'MOATEZ kAMOUN', phone: '+4917655452376'),
    UserModel(id: 2, name: 'ASMA BOUROGAA', phone: '+491734567876'),
    UserModel(id: 3, name: 'AYMEN BEN HAJ YOUSSEF', phone: '+4917756892376'),
    UserModel(id: 4, name: 'BOUGHNIA MOHAMED ARBI', phone: '+4917098782376'),
    UserModel(id: 5, name: 'SKANDER BEN HMIDA', phone: '+4917007876376'),
    UserModel(id: 6, name: 'ABDULLAH MANSOUR', phone: '+4917655098765'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return builUserItem(users[index]);
          },
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length),
    );
  }

//1.build item
//2.build list
//3.add item to the list
  Widget builUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: const TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  '${user.phone}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ]),
      );
}
