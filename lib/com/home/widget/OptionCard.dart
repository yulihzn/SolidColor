import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  final String content;

  @override
  State createState() => _OptionCardState(content);

  OptionCard({Key key, this.content}) : super(key: key);
}

class _OptionCardState extends State<OptionCard> {
  String _content;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Card(
      child: GestureDetector(
          onTap: () {},
          child: SizedBox(
              width: _width/2-10,
              height: _width/2-10,
              child: Center(
                child: Text('$_content'),
              ))),
    );
  }

  _OptionCardState(this._content);
}
