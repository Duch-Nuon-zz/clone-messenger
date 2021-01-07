import 'package:clone_chat/widget/active-friends.dart';
import 'package:clone_chat/widget/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> with TickerProviderStateMixin {
  final _listPage = [Stories(), ActiveFriends()];
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                      'People',
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
                            Icons.contacts,
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
                            Icons.person_add,
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
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: TabBar(
                    controller: TabController(length: 2, vsync: this),
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Colors.black,
                    indicatorWeight: 1,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    onTap: (index) {
                      setState(() {
                        currentIndexPage = index;
                      });
                    },
                    tabs: [
                      Tab(
                        text: 'STORIES',
                      ),
                      Tab(
                        text: 'ACTIVE',
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: _listPage[currentIndexPage],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
