
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget messageField(){
  return Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    
                    ),
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        width: 30,
                        height: 30,
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLines: 3,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Your Message..",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey)),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                      ),
                      elevation: 0.0,
                    )
                  ],
                ),
              ),
            );
}