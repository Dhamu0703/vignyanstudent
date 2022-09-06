import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class firstterm extends StatefulWidget {
  const firstterm({Key? key}) : super(key: key);

  @override
  State<firstterm> createState() => _firsttermState();
}

class _firsttermState extends State<firstterm> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("First Term",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
      body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),

                  Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:Image.asset('assets/schedule.jpg',fit: BoxFit.cover,
                        )),
                    ),
             ),
             Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 90.sp,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Center(
                child: Card(
                  color: Color.fromARGB(255, 41, 52, 98),
                  elevation: 5,
                  // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             child: Container(

                 padding: EdgeInsets.all(10),
                 height: 90.sp,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Exam Date", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 44,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("02.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Subject", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 65,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                      SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Time", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 81,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("09.00-12.00 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                             ],
                           ),
                         ),
                       ),
              )
         ), 
          Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 90.sp,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Center(
                child: Card(
                  color: Color.fromARGB(255, 41, 52, 98),
                  elevation: 5,
                  // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             child: Container(

                 padding: EdgeInsets.all(10),
                 height: 90.sp,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Exam Date", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 44,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("03.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Subject", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 65,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("English",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                      SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Time", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 81,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("09.00-12.00 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                             ],
                           ),
                         ),
                       ),
              )
         ), 
             ]
              )
              )
              ]
              )
              ),
               Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 90.sp,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Center(
                child: Card(
                  color: Color.fromARGB(255, 41, 52, 98),
                  elevation: 5,
                  // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             child: Container(

                 padding: EdgeInsets.all(10),
                 height: 90.sp,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Exam Date", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 44,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("04.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Subject", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 65,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("Maths",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                      SizedBox(
                       height: 10,
                     ),
                      Row(
                       children: [
                         Text("Time", style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                         
                         SizedBox(
                           width: 81,
                         ),
                         Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),),
                         SizedBox(
                           width: 50,
                         ),
                          Text("09.00-12.00 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
                         color: Colors.white),)
                       ],
                     ),
                             ],
                           ),
                         ),
                       ),
              )
         ), 
   ]
   )
   )   ])
   )
      )));
    
  }
}