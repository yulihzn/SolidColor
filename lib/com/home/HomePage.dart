import 'package:flutter/material.dart';
import 'package:solidcolor/com/home/utils/strings.dart';
import 'package:solidcolor/com/home/widget/mainscreen.dart';
import 'package:solidcolor/com/home/widget/optioncard.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageStatus();
  }
}

class _HomePageStatus extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        MainScreen(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OptionCard(
              content: Strings.home_start,
            ),
            OptionCard(
              content: Strings.home_continue,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OptionCard(
              content: Strings.home_achievement,
            ),
            OptionCard(
              content: Strings.home_settings,
            )
          ],
        )
      ],
    ));
  }
}
