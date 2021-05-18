import 'package:flutter/material.dart';

import 'constants/textstyles.dart';

class DownloadBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.file_download),
                Text(
                  "Download Resume",
                  style: navTextContactStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
