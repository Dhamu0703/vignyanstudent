import 'package:flutter/material.dart';


class attend extends StatefulWidget {
  const attend({Key? key}) : super(key: key);

  @override
  State<attend> createState() => _attendState();
  
}
//  String dropdownValue = 'One';
String dropdownvalue = 'January';  

  // List of items in our dropdown menu
  var items = [   
    'January',
    'Febraury',
    'March',
    'April',
    'May',
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
 
  ];
class _attendState extends State<attend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
         appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Attendance",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),
    body:  SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                  Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:Image.asset('assets/attendance.jpg',
                        width: 350,
                        // fit: BoxFit.fitHeight,
                        )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                     
                     Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 50,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Center(
                child: Card(
                  elevation: 5,
                  // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
             child: Container(

                 padding: EdgeInsets.all(10),
                 height: 50,
                 width: double.infinity,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(
                           width: 93,
                         ),
                         
                         SizedBox(
                           width: 70,
                         ),
                         Text("Attendance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                       ],
                     ),
                             ],
                           ),
                         ),
                       ),
              )
         ), 
          SizedBox(
                       height: 10,
                     ),
                     Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               
                               margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                               height: 50,
                               width: 130,
                              //  color: Colors.amber,
                               child: Card(
                                 child: Container(
                                   padding: EdgeInsets.all(10),
                                   child: Text("01.05.2022",
                                   style: TextStyle(
                                     fontSize: 18,fontWeight: FontWeight.bold
                                   ),),
                                 ),
                               ),
                             ),
                        SizedBox(
                          width: 90,
                        ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                               width: 35,
                               height: 35,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(60),
                                 color: Color.fromARGB(255, 56, 247, 154),
                               ),
                               child: Text("P",style: TextStyle(color: Colors.white,
                               fontWeight: FontWeight.w900)))

                           ],
                         ),
                       SizedBox(
                         height: 10,
                       ),
                     Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               
                               margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                               height: 50,
                               width: 130,
                              //  color: Colors.amber,
                               child: Card(
                                 child: Container(
                                   padding: EdgeInsets.all(10),
                                   child: Text("02.05.2022",
                                   style: TextStyle(
                                     fontSize: 18,fontWeight: FontWeight.bold
                                   ),),
                                 ),
                               ),
                             ),
                        SizedBox(
                          width: 90,
                        ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                               width: 35,
                               height: 35,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(60),
                                 color: Color.fromARGB(255, 255, 2, 2),
                               ),
                               child: Text("A",style: TextStyle(color: Colors.white,
                               fontWeight: FontWeight.w900))),

                           ],
                         ),
                          SizedBox(
                         height: 10,
                       ),
                     Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               
                               margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                               height: 50,
                               width: 130,
                              //  color: Colors.amber,
                               child: Card(
                                 child: Container(
                                   padding: EdgeInsets.all(10),
                                   child: Text("03.05.2022",
                                   style: TextStyle(
                                     fontSize: 18,fontWeight: FontWeight.bold
                                   ),),
                                 ),
                               ),
                             ),
                        SizedBox(
                          width: 90,
                        ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                               width: 35,
                               height: 35,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(60),
                                 color: Color.fromARGB(255, 56, 247, 154),
                               ),
                               child: Text("P",style: TextStyle(color: Colors.white,
                               fontWeight: FontWeight.w900)))
                       ],

                     )
         ],
                  ),
   ])])]))]))) ));
  }
}