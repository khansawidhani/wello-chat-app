import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/modal/chats_list_modal.dart';
import 'package:wello_chat_application/core/widgets/conversation_list.dart';
import 'package:wello_chat_application/core/widgets/header.dart';
import 'package:wello_chat_application/core/widgets/search_box.dart';

class Conversations extends StatelessWidget {
  Conversations({Key? key}) : super(key: key);
  final List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Khansa Widhani",
        messageText: "What kind is it?	",
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHRv52DaWb2ItRN3hx0qxe3raQkrXqACcPsg&usqp=CAU",
        time: "Now"),
    ChatUsers(
        name: "Kashif Imran",
        messageText: "She didn't want him to go overseas.	",
        imgUrl:
            "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "Today"),
    ChatUsers(
        name: "Hellowen Guy",
        messageText: "The dog was hit by a car.	",
        imgUrl:
            "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "Yesterday"),
    ChatUsers(
        name: "Master chef",
        messageText:
            "Don't worry, I won't drop it. Wow, it's really heavy. I don't think I can move it by myself.",
        imgUrl:
            "https://images.unsplash.com/photo-1484100356142-db6ab6244067?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "Yesterday"),
    ChatUsers(
        name: "Code with Mosh",
        messageText: "He's so thin that he looks like a skeleton.	",
        imgUrl:
            "https://images.unsplash.com/photo-1554570731-63bcddda4dcd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "2 days ago"),
    ChatUsers(
        name: "Refine beats",
        messageText: "I'm allergic to seafood.	",
        imgUrl:
            "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "1 week ago"),
    ChatUsers(
        name: "Laiba hakeem",
        messageText: "I have to wash my clothes.	",
        imgUrl:
            "https://images.unsplash.com/photo-1518895949257-7621c3c786d7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "3 week ago"),
    ChatUsers(
        name: "Ma'aarij Ahmed",
        messageText: "We saw nothing strange.	?",
        imgUrl:
            "https://images.unsplash.com/photo-1502230831726-fe5549140034?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "20 Aug"),
    ChatUsers(
        name: "Adorable Urooj",
        messageText: "A cat appeared from under the desk.	",
        imgUrl:
            "https://images.unsplash.com/photo-1514517521153-1be72277b32f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHJhbmRvbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        time: "13 Aug"),
    ChatUsers(
        name: "Mama",
        messageText:
            "It was at Macy's. I think they're having a sale this weekend.	",
        imgUrl:
            "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "01 Jul"),
    ChatUsers(
        name: "Malik Uncle",
        messageText: "She is very pretty.	",
        imgUrl:
            "https://images.unsplash.com/photo-1509909756405-be0199881695?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "10 Jun"),
    ChatUsers(
        name: "Herry Porter",
        messageText: "I got this book from him.	",
        imgUrl:
            "https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "1 Jun"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header,
                searchBox,
                ListView.separated(
                  separatorBuilder: (context, index){return Divider(color: Colors.grey, height: 2.0, indent: 70.0, endIndent: 10.0,);},
                  padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: chatUsers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ConversationList(
                          name: chatUsers[index].name,
                          message: chatUsers[index].messageText,
                          imageurl: chatUsers[index].imgUrl,
                          time: chatUsers[index].time,
                          isMessageRead:
                              (index == 0 || index == 3) ? false : true, index: index,);
                    })
              ],
            )),
      ),
    );
  }
}

