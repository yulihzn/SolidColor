import 'package:flutter/material.dart';
import 'package:solidcolor/com/home/widget/healthbar.dart';

class MainScreen extends StatefulWidget {
  @override
  State createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _width = _size.width;
    final _height = _size.height;
    return Container(
        height: _height - _width - 40,
        width: _width - 10,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          children: <Widget>[
            SizedBox(
                height: _height - _width - 40 - 40,
                child: Text(
                  'welcome to the world of solid color',
                  textAlign: TextAlign.justify,
                )),
            HealthBar(
              max: 10,
            )
          ],
        ));
  }
}
