import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthBar extends StatefulWidget {
  final int max;

  @override
  State createState() => _HealthBarState(max);

  HealthBar({Key key, this.max}) : super(key: key);
}

class _HealthBarState extends State<HealthBar> {
  int _max;
  int _current;

  @override
  Widget build(BuildContext context) {
    _current = _max;
    return Expanded(
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
          itemCount: _max,
          itemBuilder: (context, index) {
            final _color = index > _current ? Colors.grey : Colors.red;
            final _icon =
                index > _current ? Icons.favorite_border : Icons.favorite;
            return Icon(
              _icon,
              color: _color,
              size: 16,
            );
          }),
    );
  }

  _HealthBarState(this._max);
}
