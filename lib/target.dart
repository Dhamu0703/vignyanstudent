import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class target extends StatefulWidget {
  const target({Key? key}) : super(key: key);

  @override
  State<target> createState() => _targetState();
}

class _targetState extends State<target> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Syllabus Target",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
      body: SingleChildScrollView(
        
          child: Container(
           
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                        Center(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:Image.asset('assets/mission.jpg',fit: BoxFit.cover,
                              width: 250,
                              )),
                          ),
                        ),
    ]
    )
    ),
    
         Column(
           children: [
             Card(
             color: Color.fromARGB(255, 41, 52, 98),
                        elevation: 5,
                        // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                         shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("23.05.2022", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 75,
                       ),
                       Text(":", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Maths", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Targeted Chapter", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 19,
                       ),
                       Text(":", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Chapter 3", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       
                     ],
                   ),

                 ],
               ),
             ),
           ),
           Card(
             color: Color.fromARGB(255, 41, 52, 98),
                        elevation: 5,
                        // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                         shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("24.05.2022", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 75,
                       ),
                       Text(":", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Targeted Chapter", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 19,
                       ),
                       Text(":", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Chapter 5", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                       
                     ],
                   ),

                 ],
               ),
             ),
           ),
          ] 
           )
       ]    )
           )  ));
  }
}