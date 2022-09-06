import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:flutter_zoom_sdk/zoom_options.dart';
class onlineclass extends StatefulWidget {
  const onlineclass({Key? key}) : super(key: key);

  @override
  State<onlineclass> createState() => _onlineclassState();
}

class _onlineclassState extends State<onlineclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Online Class Schedule",style: TextStyle(
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
                              child:Image.asset('assets/online.jpg',fit: BoxFit.cover,
                              width: 300,
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
                               Text("     Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                               SizedBox(
                                 width: 50,
                               ),
                               Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),

                               
                               
                               SizedBox(
                                 width: 40,
                               ),
                               Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                 SizedBox(
                                 width: 50,
                               ),
                               Text("Staff",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                              
                             ],
                           ),
                           SizedBox( height: 20),
                           Row(
                             children: [
                                Text(" 23.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                               color: Colors.white),),
                               SizedBox(
                                 width: 25,
                               ),
                               Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 30,
                               ),
                               Text("10-12 am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 30,
                               ),
                               Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
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
                       height: 200.sp,
                       width: double.infinity,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Text("     Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                               SizedBox(
                                 width: 50,
                               ),
                               Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),

                               
                               
                               SizedBox(
                                 width: 40,
                               ),
                               Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                 SizedBox(
                                 width: 50,
                               ),
                               Text("Staff",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                              
                             ],
                           ),
                           SizedBox( height: 20),
                           Row(
                             children: [
                                Text(" 24.05.2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                               color: Colors.white),),
                               SizedBox(
                                 width: 25,
                               ),
                               Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 30,
                               ),
                               Text("10-12 am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                               color: Colors.white),),
                                SizedBox(
                                 width: 30,
                               ),
                               Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
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
                     SizedBox(
            height: 20,
          ),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 80),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const navigation()),
    //    );
       }, 
  child: Image.asset("assets/video.png",width: 40,color: Colors.white,),
            )
                    ],
                    
                    )
         ), 
  
  )
  )
  );
  }
}