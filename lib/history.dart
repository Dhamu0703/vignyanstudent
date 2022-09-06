import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vignyan/assignhistory.dart';
import 'package:vignyan/assignment.dart';
import 'package:vignyan/attendancehistory.dart';
import 'package:vignyan/historyfees.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("History",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
     body: SafeArea(child:  
     
     Column(
       children: [
         Container(
           margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
           child: Card(
             elevation: 2,
           child: ListTile(
                  onTap: () {
                    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const historyfees()),
    );
                  },
                  leading:  Image.asset("assets/fees.png",width: 30,),
                  title: const Text(
                    'Fees',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                
         ),
         
         
              
               
            ),
            Container(
           margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
           child: Card(
             elevation: 2,
           child: ListTile(
                  onTap: () {
                    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const attendancehistory()),
    );
                  },
                  leading:  Image.asset("assets/sch.png",width: 30,),
                  title: const Text(
                    'Attendance',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                
         ),
         
         
              
               
            ),
            Container(
           margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
           child: Card(
             elevation: 2,
           child: ListTile(
                  onTap: () {
                    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const assignhistory()),
    );
                  },
                  leading:  Image.asset("assets/ass1.png",width: 30,),
                  title: const Text(
                    'Assignment',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                
         ),
         
         
              
               
            ),
       ],
     ),
      
     )
    );
  }
}