import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../themes.dart';

class TensionTile extends StatelessWidget {
  final DateTime date;
  final String value;

  const TensionTile({super.key, required this.date, required this.value});

  @override
  Widget build(BuildContext context) {
    String unit = " мм рт. ст.";
    DateFormat format = DateFormat("dd.MM.yyyy");
    double val = double.parse(value);

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: val > 139
            ? Colors.red[300]
            : val > 125
                ? Colors.orange[300]
                : Colors.green[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          DateFormat('dd.MM.yyy').format(date),
          style: titleStyle.copyWith(color: Colors.white),
        ),
        trailing: Text(
          value + unit,
          style: subTitleStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
