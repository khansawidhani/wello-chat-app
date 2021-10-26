import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/modal/chats_list_modal.dart';

class StarredMessages extends StatelessWidget {
  StarredMessages({ Key? key }) : super(key: key);
  List<ChatUsers> starredMessages = [
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
        name: "Code with Mosh",
        messageText: "He's so thin that he looks like a skeleton.	",
        imgUrl:
            "https://images.unsplash.com/photo-1554570731-63bcddda4dcd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "2 days ago"),
        ChatUsers(
        name: "Code with Mosh",
        messageText: "He's so thin that he looks like a skeleton.	",
        imgUrl:
            "https://images.unsplash.com/photo-1554570731-63bcddda4dcd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        time: "2 days ago"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("Starred Messages", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Eczar", fontSize: 22),),
      backgroundColor: Colors.white,
      elevation: 0.2,
      
      ),
    
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListView.separated(
        separatorBuilder: (context, index){return Divider();},
        itemBuilder: (context, index){
        return StarredItem(name: starredMessages[index].name, messageContent: starredMessages[index].messageText, imageUrl: starredMessages[index].imgUrl, messageTime: starredMessages[index].time);
      }, itemCount: starredMessages.length ),
    ),
    );
  }
  
}

class StarredItem extends StatefulWidget {
  StarredItem({required this.name, required this.messageContent, required this.imageUrl, required this.messageTime});
  String name;
  String messageContent;
  String imageUrl;
  String messageTime;

  @override
  _StarredItemState createState() => _StarredItemState();
}

class _StarredItemState extends State<StarredItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.teal, child: Text(widget.name[0], style: TextStyle(color: Colors.white),),),
              SizedBox(width: 10.0,),
              Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),),
              SizedBox(width: 5.0,),
              Icon(Icons.arrow_right, color:Colors.grey[600], size: 20.0,),
              Text("You", style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold,))

            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0),
            constraints: BoxConstraints(minWidth: 10.0, maxWidth: MediaQuery.of(context).size.width*8),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Colors.black54),
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text(widget.messageContent),
              Text(widget.messageTime, textAlign: TextAlign.right, style: TextStyle(color: Colors.grey[600], fontStyle: FontStyle.italic),)
              
              ],
            ),
          ),







                       
              ],
      ),
    );
  }
}