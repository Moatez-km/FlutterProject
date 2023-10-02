import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/236x/21/e7/e2/21e7e2d7aa7bc334b5288eccf0b76f5c.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
          IconButton(
              icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildStoryItem();
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 7.0,
                  ),
                  itemCount: 7,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return buildChatItem();
                },
                itemCount: 15,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//1.build item
//2.build list
//3.add item to list

  Widget buildChatItem() {
    return const Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/236x/21/e7/e2/21e7e2d7aa7bc334b5288eccf0b76f5c.jpg'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.5,
                end: 3.5,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aymen Ben Haj Youssef',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hello my name is aymen kregoiewrloewsfgo ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: CircleAvatar(
                      radius: 5.0,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    '2:00 pm',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

//arrow function
  Widget buildStoryItem() => Container(
        width: 60.0,
        child: const Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/21/e7/e2/21e7e2d7aa7bc334b5288eccf0b76f5c.jpg'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3.5,
                    end: 3.5,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Aymen ben haj youssef',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
