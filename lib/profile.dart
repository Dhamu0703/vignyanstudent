import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Profile",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/graduate.png",width: 100,),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("R.Lakshith", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4,
                shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.all(15),
               height: 230,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Class", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                       SizedBox(
                         width: 70,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text("Xth std",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Text("Section",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 60,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text("D",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Text("Roll No",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 63,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text("005",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Text("Phone No",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 47,
                       ),
                       Text("9876543210",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Text("Address",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 60,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text("Madurai",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Text("Bus No",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 68,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 50,
                       ),
                       Text("84",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),

                 ],
               ),
             ),
           ),
              
            ],
          ),
        ),
      ),
    );
  }
}