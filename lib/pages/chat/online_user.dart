import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_store/chat_provider.dart';
import 'package:hello_world/models/online_user.dart';
import 'package:hello_world/pages/chat/chart_page.dart';
import 'package:provider/provider.dart';

class OnlineUserWidget extends StatelessWidget {
  final OnlineUserModel onlineUser;
  OnlineUserWidget({this.onlineUser});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          child: ListTile(
        title: Text(onlineUser.firstName),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(onlineUser.imageUrl),
        ),
        trailing: Row(
          children: <Widget>[
            IconButton(
              icon:  Icon( Icons.call),
              onPressed: (){

              },
            )
        
          ],
        ),
      )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatPage(onlineUser: onlineUser);
        }));
      },
    );
  }
  //ChatBox
}
