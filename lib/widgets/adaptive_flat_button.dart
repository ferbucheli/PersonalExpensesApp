import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final VoidCallback _handler;

  AdaptiveFlatButton(this._text, this._handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: _handler,
            child: Text(
              _text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor),
            onPressed: _handler,
            child: Text(
              _text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
