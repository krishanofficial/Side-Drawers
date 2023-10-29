
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
 runApp(MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text("Drawers",
         style: TextStyle(fontSize: 20.0),),
     ),
     body:Container(
       child: Text("Drawers"),
     ),

     drawer:Drawer(
       child: ListView(
         children: [
           UserAccountsDrawerHeader(accountName: Text("Krishan Kumar"),
               accountEmail: Text("radhekrishan086@gmail.com"),
             currentAccountPicture: CircleAvatar(
               // backgroundImage:,
               child: Text("A",style: TextStyle(color: Colors.red),),

             ),
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home"),
             onTap: (){
               Fluttertoast.showToast(msg: "Home Clicked!!!...");

             },
           ),
           ListTile(
             leading: Icon(Icons.settings), title: Text("Settings"),
             onTap: () {
              Fluttertoast.showToast(msg: "Setting Clicked!!!...");
             },
           ),
           ListTile(
             leading: Icon(Icons.contacts), title: Text("Contact Us"),
             onTap: () {
               Fluttertoast.showToast(msg: "Contact Clicked!!!...");

             },
           ),
         ],
       ),
     ) ,
   ),
 ));
}