import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
        ),
        actions: [
          IconButton(
            onPressed: onSearch,
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: onNotifications,
            icon: const Icon(
              Icons.notification_important,
            ),
          )
        ],
      ),
      body: /*Container(
        color: Colors.purpleAccent,
        height: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.red,
              child: const Text(
                'First',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Text(
                'Second',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Text(
                'third',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: const Text(
                'Fourth',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),

          Container(

        color: Colors.purpleAccent,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                child: const Text(
                  'first text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'second text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Text(
                  'third text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: const Text(
                  'fourth text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Text(
                  'first text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'second text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Text(
                  'third text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: const Text(
                  'fourth text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Text(
                  'first text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'second text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Text(
                  'third text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: const Text(
                  'fourth text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Text(
                  'first text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'second text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Text(
                  'third text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: const Text(
                  'fourth text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Text(
                  'first text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'second text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Text(
                  'third text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: const Text(
                  'fourth text !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      */
          /* Container(
        width: 200.0,
        child: Image.network(
          'https://i.pinimg.com/236x/21/e7/e2/21e7e2d7aa7bc334b5288eccf0b76f5c.jpg',
        ),
      ),*/

          Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 200.0,
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://i.pinimg.com/236x/21/e7/e2/21e7e2d7aa7bc334b5288eccf0b76f5c.jpg',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(.6),
                  padding: /*const EdgeInsetsDirectional.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),*/
                      const EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Flower',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onSearch() {
    print('Search Clicked !');
  }

  void onNotifications() {
    print('notifications clicked !');
  }
}
