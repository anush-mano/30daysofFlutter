import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/v2/D5603AQGvgePPGJniCQ/profile-displayphoto-scale_200_200/B56Zioql8QG0AY-/0/1755176399398?e=2147483647&v=beta&t=YYejTL9Cbw60Ydo7mjMNpjLSSSuPBA-DNTVGsnWpHkw";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Anusha Manohar"),
              accountEmail: Text("anushamanohar6@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text("Email", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
