import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget deffaultButton(
        {double width = double.infinity,
        // ignore: non_constant_identifier_names
        required Color TextColor,
        Color background = const Color(0xffffa726),
        required String text,
        required Function() function}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: background,
      ),
      width: width,
      height: 50,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: TextColor,
            fontSize: 18,
          ),
        ),
      ),
    );
