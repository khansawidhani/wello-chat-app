
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget messageField(){
  return Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 62,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all()
                    
                    ),
                padding: EdgeInsets.only(
                  left: 10,
                  top: 5,
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
                        style: TextStyle(fontSize: 16.0),
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
                    Container(
                      padding: EdgeInsets.all(3.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                        ),
                        elevation: 0.0,
                      ),
                    )
                  ],
                ),
              ),
            );
}