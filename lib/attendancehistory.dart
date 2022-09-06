import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class attendancehistory extends StatefulWidget {
  const attendancehistory({Key? key}) : super(key: key);

  @override
  State<attendancehistory> createState() => _attendancehistoryState();
}

class _attendancehistoryState extends State<attendancehistory> {
  var currentdate = DateTime.now();
   
     DateTime _dateTime = DateTime(2022);
    //  String _selectedDate;
    DateTime selectedDate = DateTime.now();
      Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        print(picked);
        print(picked.toString().split(' ')[0]);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Attendance History",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
     body:  SafeArea(child: 
    SingleChildScrollView(
      child:
    
    Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                       height: 50,
                       width: 200,
                       child: TextFormField(
                         initialValue: "${selectedDate.toLocal()}".split(' ')[0]=='null'?'': "${selectedDate.toLocal()}".split(' ')[0],
                          // controller: _con2,
                                   keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                      suffixIcon: 
                                      IconButton(onPressed: ()async{
                                        _selectDate(context);
              //                            var value;
              //                            _con2.text=value.toString().split(' ')[0];
              //                       final DateTime? picked = await       showDatePicker(context: context, 
              //     initialDate:_dateTime, 

              //     firstDate: DateTime(2000), lastDate: DateTime(3000),);
              //      if (picked != null && picked != selectedDate) {
              //   setState(() {
              //     _con2.text=selectedDate.toString();
              //     selectedDate = picked;
              //   });
              // }
                                   
                                     
                                      }, icon: Icon(Icons.calendar_month,color: Color.fromARGB(255, 41, 52, 98),),
                                       iconSize: 20,
                                      
                                      color: Colors.blue,
                                      ),
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                                       
                                       focusedBorder:OutlineInputBorder(
                                         
                              borderSide: const BorderSide(color: Colors.grey,width: 1 ),
                              borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey,width: 1),),
                                    ), 
                 ),   
                   ),
            ],
          ),
          SizedBox(height: 20,),
          Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                           width: 50,
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
    ]
    )
           ] )
          ]  )
   ] )
      )))  );
  }
}