import 'package:flutter/material.dart';

Widget header = Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Text(
            "Conversations",
            style: TextStyle(
                fontSize: 30.0,
                // fontFamily: "Eczar",
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.teal[50]),
          child: GestureDetector(
            onTap: (){
              // lead to contacts 
            },
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.green[900],
                ),
                Text(
                  "Add new",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.green[900]),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );