// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/modal/message_body_modal.dart';
import 'package:wello_chat_application/core/widgets/message_field.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<MessageBody> messages = [
    MessageBody(
      id: "1",
        messageContent: "I like my job very much.	",
        messageType: "reciever",
        messageTime: "Just now", isRead: true),
    MessageBody(
      id: "2",
        messageContent:
            "It was at Macy's. I think they're having a sale this weekend.	",
        messageType: "sender",
        messageTime: "2 mins ago", isRead: true),
    MessageBody(
      id: "3",
        messageContent: "She is very pretty.	",
        messageType: "sender",
        messageTime: "1 hour ago", isRead: true),
    MessageBody(
      id: "4",
        messageContent: "I got this book from him.	",
        messageType: "reciever",
        messageTime: "5 hours ago", isRead: true),
    MessageBody(
      id: "5",
        messageContent: "A cat appeared from under the desk.	",
        messageType: "reciever",
        messageTime: "1 day ago", isRead: true),
    MessageBody(
      id: "6",
        messageContent: "Do you have any books to read?	",
        messageType: "reciever",
        messageTime: "yesterday", isRead: true),
    MessageBody(
      id: "7",
        messageContent: "I have to wash my clothes.	",
        messageType: "reciever",
        messageTime: "yesterday", isRead: true),
    MessageBody(
      id: "8",
        messageContent: "We saw nothing strange.	",
        messageType: "reciever",
        messageTime: "2 day ago", isRead: true),
    MessageBody(
      id: "9",
        messageContent: "I can't figure out how to operate this machine.	",
        messageType: "reciever",
        messageTime: "3 days ago", isRead: true),
    MessageBody(
      id: "10",
        messageContent: "He's so thin that he looks like a skeleton.	",
        messageType: "reciever",
        messageTime: "5 days ago", isRead: true),
    MessageBody(
      id: "11",
        messageContent: "This is never going to end.	",
        messageType: "sender",
        messageTime: "15 Oct", isRead: true),
    MessageBody(
      id: "12",
        messageContent: "Can I take the subway to get there?	",
        messageType: "sender",
        messageTime: "11 Oct", isRead: true),
    MessageBody(
      id: "13",
        messageContent: "I saw him wash the car.	",
        messageType: "sender",
        messageTime: "10 Oct", isRead: true),
    MessageBody(
      id: "14",
        messageContent: "How do you usually decide what to eat?	",
        messageType: "reciever",
        messageTime: "9 Oct", isRead: true),
    MessageBody(
      id: "15",
        messageContent: "She wanted him to sing her a song.	",
        messageType: "reciever",
        messageTime: "30 Sep", isRead: true),
    MessageBody(
      id: "16",
        messageContent: "I don't have a girlfriend.	",
        messageType: "sender",
        messageTime: "28 Sep", isRead: true),
    MessageBody(
      id: "17",
        messageContent: "I'm allergic to seafood.	",
        messageType: "reciever",
        messageTime: "15 Sep", isRead: true),
    MessageBody(
      id: "18",
        messageContent: "I like French food very much.	",
        messageType: "reciever",
        messageTime: "15 Sep", isRead: true),
    MessageBody(
      id: "19",
        messageContent: "She was injured in the traffic accident.	",
        messageType: "reciever",
        messageTime: "1 Sep", isRead: true),
    MessageBody(
      id: "20",
        messageContent:
            "Don't worry, I won't drop it. Wow, it's really heavy. I don't think I can move it by myself.	",
        messageType: "sender",
        messageTime: "25 Jul", isRead: false),
  ];
  final List<MaterialColor> _colors = [
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0.0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.keyboard_backspace)),
                  SizedBox(
                    width: 2.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(
                      arg["name"][0],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // backgroundImage: NetworkImage(arg["imageUrl"])
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          arg["name"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Online")
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom:60.0 ),
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                      child: Align(
                          alignment: messages[index].messageType == "reciever"
                              ? Alignment.topLeft
                              : Alignment.topRight,
                          child: Container(

                            padding: const EdgeInsets.all(10.0),
                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: messages[index].messageType == "reciever" 
                              ? Colors.grey[400]: Colors.teal[100]
                            ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                            messages[index].messageContent,
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(messages[index].messageTime),
                              SizedBox(width: 5.0,),
                              Icon(Icons.done_all, color: messages[index].isRead == true? Colors.teal: Colors.grey[600],
                              size: 20,
                              )
                            ],
                          )
                                ],
                              ))));
                },
                itemCount: messages.length,
              ),
            ),
            messageField()
          ],
        )
        );
  }
}
