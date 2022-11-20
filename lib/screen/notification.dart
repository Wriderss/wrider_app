import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications",style: TextStyle(color: Colors.black)),actions: [Icon(Icons.notifications_active,color: Colors.black),SizedBox(width: 10,)],backgroundColor: Theme.of(context).scaffoldBackgroundColor,elevation: 0,),

      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) => Notice(),itemCount: 10,))
        ],
      )
    );
  }
  Widget Notice(){
    return Column(
      children: [
        ListTile(title: Text("You've got a notification from Mayank"),
                    onTap: (){},
                   
                    leading: CircleAvatar(
                   backgroundImage: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",),  
                   )
                    ),
                    SizedBox(height: 5,),
      ],
    );
  }
}
