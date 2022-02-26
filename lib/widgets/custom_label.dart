import 'package:flutter/material.dart';

import 'package:realtimechat/constants/constants.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String text;
  final String subtitle;

  const Labels(
      {required this.ruta, required this.text, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            this.subtitle,
            style: kTextLabel,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.restorablePushNamed(context, this.ruta);
            },
            child: Text(
              this.text,
              style: kTextblue,
            ),
          ),
        ],
      ),
    );
  }
}
