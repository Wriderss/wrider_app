import 'package:flutter/material.dart';
import 'package:wride_app/util/tabs/bookmark_tab.dart';
import 'package:wride_app/util/tabs/like_tab.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Aditya Painuli',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(
              Icons.person_add,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              // profile photo
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
              // username
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '@aditya_painuli.12',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Developer @wride',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              // number stats
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '36',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      '10',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Text(
                      'Uploaded Articles',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                )),
              ]),
              SizedBox(
                height: 20,
              ),
              // button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text('Edit Profile',
                        style: TextStyle(color: Colors.white)),
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              ),
              // bio
              // tab controller
              TabBar(tabs: [
                Tab(
                    icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                )),
              ]),

              Expanded(child: TabBarView(children: [LikeTab(), BookMarkTab()]))
            ],
          ),
        ));
  }
}
