import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class events extends StatefulWidget {
  const events({Key? key}) : super(key: key);

  @override
  State<events> createState() => _eventsState();
}

class _eventsState extends State<events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Events",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),
       body: SafeArea(child: 
      SingleChildScrollView(
        
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
                              child:Image.asset('assets/event.jpg',fit: BoxFit.cover,
                              )),
                          ),
                        ),

                             Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 75.sp,
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
                       height: 200.sp,
                       width: double.infinity,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Text("     Event", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                               SizedBox(
                                 width: 85,
                               ),
                               Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),

                               
                               
                               SizedBox(
                                 width: 90,
                               ),
                               Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                              
                             ],
                           ),
                           SizedBox( height: 20),
                           Row(
                             children: [
                                Text(" Sports Day",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                               color: Colors.white),),
                               SizedBox(
                                 width: 40,
                               ),
                               Text("20.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 55,
                               ),
                               Text("10.00 Am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                
                             ],
                           ),
                           
                                   ],
                                 ),
                               ),
                             ),
                    )
         ), 
 Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 75.sp,
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
                       height: 300.sp,
                       width: double.infinity,
                       child: Column(
                         children: [
                           Row(
                             children: [
                              Text("     Event", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                               SizedBox(
                                 width: 85,
                               ),
                               Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),

                               
                               
                               SizedBox(
                                 width: 90,
                               ),
                               Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                              
                             ],
                           ),
                           SizedBox( height: 20),
                           Row(
                             children: [
                                Text(" Annual Day",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                               color: Colors.white),),
                               SizedBox(
                                 width: 40,
                               ),
                               Text("28.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 55,
                               ),
                               Text("10.00 Am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                
                             ],
                           ),
                                   ],
                                 ),
                               ),
                             ),
                    )
         ), 

                                   ],
                                 ),
              ]),
                             ),
                    ])
         ), 
  
  )
  )
  );
     
  }
}