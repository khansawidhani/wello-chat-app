import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/widgets/message_field.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0.2,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "New Message",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)))
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To:",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: TextField(
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline_outlined, color: Colors.teal[900],),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            messageField()
          ],
        )

        // SingleChildScrollView(

        //   child: Column(
        //     children: [
        //       // Container(
        //       //   width: MediaQuery.of(context).size.width,
        //       //   padding: const EdgeInsets.all(5.0),

        //       //   child: Row(
        //       //     children: [
        //       //       TextField(
        //       //         decoration: InputDecoration(
        //       //           prefixText: "To:",
        //       //           // border: OutlineInputBorder(),
        //       //           filled: true,
        //       //           fillColor: Colors.white,
        //       //           suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle),)
        //       //           ),
        //       //       )
        //       //     ],
        //       //   ),
        //       // ),
        //     ],
        //   ),

        );
  }
}
