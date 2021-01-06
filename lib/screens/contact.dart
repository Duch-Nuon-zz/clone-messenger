import 'package:clone_chat/data/photo.dart';
import 'package:clone_chat/screens/chat.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/TanjiRo.jpg'),
                        radius: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Chats',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.1),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            onPressed: null,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.1),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            onPressed: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 26,
                        color: Colors.grey[500],
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: photo.length,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.video_call,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                                radius: 35,
                                backgroundColor: Colors.grey.withOpacity(0.1),
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                  image: AssetImage(photo[index]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        );
                },
              ),
            ),
            Chat(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 30,
            ),
            title: Text(
              'Chat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 30,
            ),
            title: Text(
              'Chat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
