import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  ConversationList(
      {required this.name,
      required this.message,
      required this.imageurl,
      required this.time,
      required this.isMessageRead,
      required this.index
      });
  final String name;
  final String message;
  final String imageurl;
  final String time;
  final bool isMessageRead;
  final int index;

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    String trimedMessage = widget.message.length > 70? widget.message.substring(0, 70) + "...": widget.message;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,"/chat", arguments: {"name":widget.name, "imageUrl": widget.imageurl});
        
      },
      child: ListTile(
        leading: CircleAvatar(
          // backgroundImage: NetworkImage(widget.imageurl),
          backgroundColor: widget.index.isEven? Colors.purple: Colors.blueAccent,
          child: Text(widget.name[0], style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        ),
        title: Text(widget.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(trimedMessage),
        trailing: Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Text(
            widget.time,
            style: TextStyle(
                fontWeight: widget.isMessageRead == true
                    ? FontWeight.normal
                    : FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
