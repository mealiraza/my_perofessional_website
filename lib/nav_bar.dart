import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_perofessional_website/constants/textstyles.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/person.jpg"),
                  ),
                  MediaQuery.of(context).size.width > 600
                      ? Text(
                          "Ali Raza",
                          style: navTitleTextStyle,
                        )
                      : Text(""),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: MediaQuery.of(context).size.width > 600
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Home",
                          style: navTextStyle,
                        ),
                        Text(
                          "Service",
                          style: navTextStyle,
                        ),
                        Text(
                          "Portfolio",
                          style: navTextStyle,
                        ),
                        Text(
                          "Downloads",
                          style: navTextStyle,
                        ),
                        Text(
                          "About Me",
                          style: navTextStyle,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.home),
                        Icon(Icons.design_services),
                        Icon(Icons.notes),
                        Icon(Icons.notes),
                        Icon(Icons.notes),
                      ],
                    ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MediaQuery.of(context).size.width > 900
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                Text(
                                  "Contact",
                                  style: navTextContactStyle,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                              ],
                            ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
