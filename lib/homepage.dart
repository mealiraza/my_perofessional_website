import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_perofessional_website/intro_page.dart';
import 'package:my_perofessional_website/nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: screenWidth < 600
          ? Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            )
          : null,
      appBar: MediaQuery.of(context).size.width < 600 ? AppBar() : null,
      body: SafeArea(
          child: ListView(
        children: [
          NavBar(),
          IntroPage(),
        ],
      )),
    );
  }
}
