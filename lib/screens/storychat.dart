import 'package:clone_chat/data/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class StoryChat extends StatefulWidget {
  @override
  _StoryChatState createState() => _StoryChatState();
}

class _StoryChatState extends State<StoryChat> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  SizedBox(width: 15),
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
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.grey[500],
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 18,
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
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photo.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
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
                            radius: 30,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                          ),
                          Text('Create room'),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              photo[index],
                            ),
                            radius: 30,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.green,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(name[index]),
                        ],
                      ),
                    );
            },
          ),
        ),
        Chat(),
      ],
    );
  }
}
