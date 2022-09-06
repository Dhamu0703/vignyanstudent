import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/home.dart';

import 'navigation.dart';


class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: BackButton(color: Colors.white,
        // onPressed: (){
        //   print("object");
        //  Get.offAll(()=>navigation());
        // },
        // ),
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Notification",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),

    body: Container(
      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: Image.asset("assets/bell.png"),
    ),
    );
  }
}