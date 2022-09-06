import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  String dropdownvalue = 'First Term';  

  // List of items in our dropdown menu
  var items = [   
    'First Term',
    'Second Term',
    'Third Term',
    'Final Term',
  
 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Exam Results",style: TextStyle(
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
                        child:Image.asset('assets/result.jpg',fit: BoxFit.cover,
                        )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                       padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                       height: 30,
                       
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         
                           border: Border.all(color: Colors.grey,
                           
                           
                           width: 1),
                         ),

                       
                       margin: EdgeInsets.fromLTRB(4, 0, 20, 0),
                       child: DropdownButton(
                       
                      
                 
                // Initial Value
                value: dropdownvalue,
                 
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),   
                 
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                  
                    value: items,
                    child: Text(
                 
                      items,style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
                     ),
                     SizedBox(
                       height: 10,
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
                         Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 30,
                         ),
                         Text("Catagory", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),

                         SizedBox(
                           width: 10,
                         ),
                         
                         SizedBox(
                           width: 25,
                         ),
                         Text("Marks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                         Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 20,
                         ),
                         Text("Grade",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox( height: 20),
                     Row(
                       children: [
                          Text(" Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 35,
                         ),
                         Text("Language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 35,
                         ),
                         Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 40,
                         ),
                         Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 40,
                         ),
                         Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     )
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
                         Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 30,
                         ),
                         Text("Catagory", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),

                         SizedBox(
                           width: 10,
                         ),
                         
                         SizedBox(
                           width: 25,
                         ),
                         Text("Marks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                         Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 20,
                         ),
                         Text("Grade",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox( height: 20),
                     Row(
                       children: [
                          Text("English",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                         Text("Language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 35,
                         ),
                         Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 40,
                         ),
                         Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 40,
                         ),
                         Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     )
                             ],
                           ),
                         ),
                       ),
              )
         ), 
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 110.sp,
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
                 height: 110.sp,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 30,
                         ),
                         Text("Catagory", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),

                         SizedBox(
                           width: 10,
                         ),
                         
                         SizedBox(
                           width: 25,
                         ),
                         Text("Marks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                         Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 20,
                         ),
                         Text("Grade",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox( height: 20),
                     Row(
                       children: [
                         
                         SizedBox(
                           width: 80,
                         ),
                         Text("Theory",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 45,
                         ),
                         Text("75",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 80,
                         ),
                        //  Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                        //  Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),)
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Row(
                       children: [
                         Text("Science",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 180,
                         ),
                         Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 35,
                         ),
                            Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),)
                       ],
                     ),
                      
                     SizedBox(
                       height: 10,
                     ),

                     Row(
                       children: [
                         
                         SizedBox(
                           width: 80,
                         ),
                         Text("Practical",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 35,
                         ),
                         Text("25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 40,
                         ),
                        //  Text("25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),),
                         SizedBox(
                           width: 35,
                         ),
                      
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
              height: 110.sp,
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
                 height: 110.sp,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 30,
                         ),
                         Text("Catagory", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),

                         SizedBox(
                           width: 10,
                         ),
                         
                         SizedBox(
                           width: 25,
                         ),
                         Text("Marks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                         Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),),
                          SizedBox(
                           width: 20,
                         ),
                         Text("Grade",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,
                         color: Colors.white),)
                       ],
                     ),
                     SizedBox( height: 20),
                     Row(
                       children: [
                         
                         SizedBox(
                           width: 80,
                         ),
                         Text("Theory",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 45,
                         ),
                         Text("75",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 80,
                         ),
                        //  Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),),
                         SizedBox(
                           width: 25,
                         ),
                        //  Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),)
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Row(
                       children: [
                         Text("Biology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 190,
                         ),
                         Text("95",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                         SizedBox(
                           width: 35,
                         ),
                            Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),)
                       ],
                     ),
                      
                     SizedBox(
                       height: 10,
                     ),

                     Row(
                       children: [
                         
                         SizedBox(
                           width: 80,
                         ),
                         Text("Practical",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 35,
                         ),
                         Text("20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                         color: Colors.white),),
                          SizedBox(
                           width: 40,
                         ),
                        //  Text("25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                        //  color: Colors.white),),
                         SizedBox(
                           width: 35,
                         ),
                      
                       ],
                     ),

                     
                             ],
                           ),
                         ),
                       ),
              )
         ), 
        ]  
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 170,
          margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
         
         
          child:Card(
           shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
            elevation: 10,
          
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                Text("Results Summary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
  height: 20,
),

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Marks",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(width: 20,),
              Text(":",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               SizedBox(width: 20,),
              Text("395/400",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           
                ],
              ),
                   SizedBox(
  height: 20,
),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("                     Results",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Text("            :     ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Text("Pass",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          ),
           SizedBox(
  height: 20,
),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("                    Overall Grade",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Text("   :     ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Text("A",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          )
            ],
            
        ),

       
          
          
        
            
          )),),


       
        
     ]   )
        )
        ))  );
  }
}