import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vignyan/account.dart';
import 'package:vignyan/events.dart';
import 'package:vignyan/examtime.dart';
import 'package:vignyan/fees.dart';
import 'package:vignyan/history.dart';
import 'package:vignyan/historyfees.dart';
import 'package:vignyan/main.dart';
import 'package:vignyan/navigation.dart';
import 'package:vignyan/notification.dart';
import 'package:vignyan/onlineclass.dart';
import 'package:vignyan/profile.dart';
import 'package:vignyan/results.dart';
import 'package:vignyan/target.dart';
import 'package:vignyan/timetable.dart';
import 'package:vignyan/trasnport.dart';
import 'package:sizer/sizer.dart';


import 'Library.dart';
import 'assignment.dart';
import 'attend.dart';
import 'hostel.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
    return Scaffold(
      drawer: Drawer(
      elevation: 6,
      child: Column(children: [
        SizedBox(
          height:50
        ),

        Image.asset("assets/graduate.png", width: 100,),
        const SizedBox(height: 10),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          
          child: ListTile(
            onTap: () {
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const account()),
    );
            },
            leading:  Image.asset("assets/user.png",width: 30,),
            title: const Text(
              'Account',
              style: TextStyle(fontSize: 15),
            ),
            
          ),
        ),
        Divider(
          height: 1,
          thickness: 1.5,
        ),
        Container(
          child: ListTile(
            onTap: () {
             Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const notification()),
    );
            },
            leading: Image.asset("assets/bell.png",width: 30,),
            title: const Text(
              'Notification',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
         Divider(
          height: 1,
          thickness: 1.5,
        ),
        Container(
          child: ListTile(
            onTap: () {
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const profile()),
    );
            },
            leading: Image.asset("assets/pro.png",width: 30,),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
         Divider(
          height: 1,
          thickness: 1.5,
        ),
         Container(
           child: ListTile(
            onTap: () {
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const history()),
    );
            },
            leading: Image.asset("assets/clock.png",width: 30,),
            title: const Text(
              'History',
              style: TextStyle(fontSize: 15),
            ),
        ),
         ),
          Divider(
          height: 1,
          thickness: 1.5,
        ),
         Container(
           child: ListTile(
            onTap: () {
              showDialog(
                               context: context, 
                             builder: (context)=>AlertDialog(
                                  content: Container(
                                    height: 100,
                                    width: 100,
                                    child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are You Sure to Log Out?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    
                    ),                        
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                     ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(100, 40),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
                Navigator.pop(context);

       }, 
  child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 15),)),
            SizedBox(
              width: 15,
            ),
            Row(
                  children: [
                     ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(100, 40),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
       
              
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const bodypart()),
    //    );
       }, 
  child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 15),))
                  
                  ],
                ),
                
              ],
            )  ])]))));
            },
            leading: Image.asset("assets/logout.png",width: 30,),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 15),
            ),
        ),
         ),
      ]),
    ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 52, 98),
        // leading: IconButton(onPressed: (){
        //   Scaffold.of(context).openDrawer();
        // }, icon: Icon(Icons.menu,),
        // iconSize: 35,
        // ),
        title: Text("Vignyan Schools",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      body: multi(),
    
    );
  }

);
  }
}

class multi extends StatefulWidget {
  const multi({Key? key}) : super(key: key);

  @override
  State<multi> createState() => _multiState();
}

class _multiState extends State<multi> {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
          width: double.infinity,
          height: 600,

          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                   child: Row(
            children: [
              Column(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const time()),
  );
                                       },
                        child: Column(
                          children: [
                           
                            Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 105,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 244, 191, 191),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white,
                                         
                                        ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           Image.asset('assets/st.png',
                                             width: 45,)
                                        ],
                                      ),
                                        
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Text("Time Table", style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 15,
                                         ),)
                                       ],
                                     )
                                    ],
                                  ),
                                ),
                                
                           ] ),
        
     ] ),
      
     ),
                  ),
                ],
              ),

               ],
          ),
      
     ),
     SizedBox(
       width: 10,
     ),
     GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const assignment()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 194, 222, 209),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/ass1.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Assignment", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
      SizedBox(
                        width: 10,
                      ),
                  GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const attend()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 177, 188, 230),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/sch.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Attendance", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
                      

                     ]  ),
                     SizedBox(
                       height: 25,
                     ),

                     Row(
                       children: [
                         GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const transport()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 235, 200),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/bus.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Transport", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const hostel()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 172, 125, 136),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/hostel.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Hostel Details", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const examtime()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 162, 179, 139),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/exam.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 2,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Exam", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           ),
                           Text("Time Table",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                           
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
         
                       ],
                     ),
                       SizedBox(
                       height: 25,
                     ),

                     Row(
                       children: [
                         GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const results()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 191, 191),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/med.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Results", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const events()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 194, 222, 209),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/event.png',
                                   width: 50,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Events", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Library()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 177, 188, 230),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/book.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Library", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           ),
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
                    ],
                  ),
                    SizedBox(
                       height: 25,
                     ),

                     Row(
                       children: [
                         GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const fees()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 235, 200),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/fees.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Fees Details", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const onlineclass()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 172, 125, 136),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/onc.png',
                                   width: 45,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Online Class", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           )
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
     SizedBox(
       width: 10,
     ),
      GestureDetector(
        onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const target()),
  );
                                       },
      
              child:   Column(
                   children: [
                 
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 105,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 162, 179, 139),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                               
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Image.asset('assets/target.png',
                                   width: 50,)
                              ],
                            ),
                              
                            ),
                            SizedBox(
                              height: 2,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Syllabus", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                             
                             ],
                           ),
                           Text("Target",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                               ),),
                           
                          ],
                        ),
                      ),

                     ]  ),
                    ],
                  ),
     ),
                
             ] ),
         
       ]  ),

     )
    )
    ); 
   } );
  }
}