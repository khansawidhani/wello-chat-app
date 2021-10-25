import 'package:flutter/material.dart';

Padding searchBox = const Padding(
    padding: EdgeInsets.only(right: 10.0, left: 10.0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Search ...",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          prefixIcon: Icon(Icons.search)),
    ),
  );