import 'package:flutter/material.dart';
import 'package:my_perofessional_website/dowload_btn.dart';

import 'constants/string_const.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/glow_sun.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Container(
                    width: 400,
                    child: Card(
                        elevation: 10,
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "WHO I'AM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(myIntroStr),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  DownloadBtn(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )))),
          ],
        ));
  }
}
