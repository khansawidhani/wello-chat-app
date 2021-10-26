// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
              backgroundColor: Colors.black,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                centerTitle: true,
                title: Text("Khansa Widhani", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                ),  
                  background: Image.network("https://media.istockphoto.com/photos/cement-floor-and-black-wall-backgrounds-empty-room-interior-use-for-picture-id1226232663?b=1&k=20&m=1226232663&s=170667a&w=0&h=US1L3FG47WZUOGhY_WiXCmJu0UkTv0MKPb8wOziwG4s=",
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.cover, 
                  ),
                   


              // ),
            ),
            )];
      },
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          ListTile(
            // contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
            leading: Icon(Icons.person,color: Colors.teal, ),
            title: Text("Fullname", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Khansa Widhani", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.info,color: Colors.teal, ),
            title: Text("About", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Best of Luck to everyone", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
            onTap: (){
            },
          ),

          ListTile(
            leading: Icon(Icons.email,color: Colors.teal, ),
            title: Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("khansa.ashraf23@gmail.com", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
            onTap: (){
            },
          ),

          ListTile(
            leading: Icon(Icons.phone,color: Colors.teal, ),
            title: Text("Phone #", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("03361234556", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
            onTap: (){
            },
          ),
          Divider(

          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red,),
            title: Text("Logout", style: TextStyle(color: Colors.red),),
            onTap: (){},
          )
        ],
      ),
      
      
       ),
    );
      
  }
}
              //   Row(
              //     children: [
              //       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
              // Text("Name", 
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 16.0,
              //   ),
              //   ), 
                    
                    
              //     ],
              //   ),