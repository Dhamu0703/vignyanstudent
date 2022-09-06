import 'package:flutter/material.dart';
import 'package:vignyan/finalterm.dart';
import 'package:vignyan/firstterm.dart';
import 'package:vignyan/secondterm.dart';
import 'package:vignyan/thirdterm.dart';

class examtime extends StatefulWidget {
  const examtime({Key? key}) : super(key: key);

  @override
  State<examtime> createState() => _examtimeState();
}

class _examtimeState extends State<examtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Exam Timetable",style: TextStyle(
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
                        child:Image.asset('assets/exam.jpg',fit: BoxFit.cover,
                        )),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
            Container(
              margin: EdgeInsets.all(12),
              height: 80,
              width: 250,
              padding: EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 41, 52, 98),
              ),
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const firstterm()),
                    );
                                       },
                child: Row(
                  children: [
                    Image.asset("assets/term1.png",
                    width: 50,),
                    SizedBox(
                      width: 20,
                    ),
                    Text("First Term", 
                    style: TextStyle(color: Colors.white, 
                    fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)

                  ],
                ),
              ),
            ),
            SizedBox(
                    height: 0,
                  ),
            Container(
              margin: EdgeInsets.all(12),
              height: 80,
              width: 250,
              padding: EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 41, 52, 98),
              ),
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const secondterm()),
                    );
                                       },
                child: Row(
                  children: [
                    Image.asset("assets/second.png",
                    width: 50,),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Second Term", 
                    style: TextStyle(color: Colors.white, 
                    fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)

                  ],
                ),
              ),
            ),
            SizedBox(
              width: 0,
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 80,
              width: 250,
              padding: EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 41, 52, 98),
              ),
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const thirdterm()),
                    );
                                       },
                child: Row(
                  children: [
                    Image.asset("assets/third.png",
                    width: 50,),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Third Term", 
                    style: TextStyle(color: Colors.white, 
                    fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 80,
              width: 250,
              padding: EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 41, 52, 98),
              ),
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const finalterm()),
                    );
                                       },
                child: Row(
                  children: [
                    Image.asset("assets/final.png",
                    width: 50,),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Final Term", 
                    style: TextStyle(color: Colors.white, 
                    fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)

                  ],
                ),
              ),
            ),
           ]
           )
           )
           )
           )
    );
  }
}