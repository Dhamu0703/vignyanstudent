
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class fees extends StatefulWidget {
  const fees({Key? key}) : super(key: key);

  @override
  State<fees> createState() => _feesState();
}
 final List<String> maritial = [
    'Annual Fees',
    'Term Fees',
    
  ];
  String? maritialValue;
String dropdownvalue = 'First Term';  

  // List of items in our dropdown menu
  var items = [   
    'First Term',
    'Second Term',
    'Third Term',
    'Final Term',
  
 
  ];
class _feesState extends State<fees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Fees Details",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),
      body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [
                Container(
                  width: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                        Center(
                          child: Container(
                            // width: 500,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:Image.asset('assets/fees.jpg',fit: BoxFit.cover,
                              )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                        
                      // margin: EdgeInsets.all(10),
                      // padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  '  Select',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: maritial
                              .map((maritial) => DropdownMenuItem<String>(
                                    value: maritial,
                                    child: Text(
                                      "  " + maritial,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: maritialValue,
                          onChanged: (value) {
                            setState(() {
                              maritialValue = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                     SizedBox(
                  height: 20,
                ),
        
                 TextField(
                    
        
                    decoration: InputDecoration(
                      
                       contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                       
                      hintText: "Tution Fees",
                      
                      
                      alignLabelWithHint: false,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1,color: Colors.grey), 
                          
                          borderRadius: BorderRadius.circular(10),
                          
                         
                      ),
      
                       focusedBorder: OutlineInputBorder(
                         
                          borderSide: const BorderSide(width: 1,color: Colors.grey), 
                          borderRadius: BorderRadius.circular(10),
                    ),
                    
                  ),),
         
                
                SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Transport Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Material Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Hostel Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Book Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Exam Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                     
                    hintText: "Amount Paid",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Due Date",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                 SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Date of Payment",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Mode of Payment",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Total Fees",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Balance Due",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Last Date of Payment",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
                  SizedBox(
                  height: 20,
                ),
                 TextField(
                  
        
                  decoration: InputDecoration(
                    
                     contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                     
                    hintText: "Fine Amount",
                    
                    
                    alignLabelWithHint: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                       
                    ),
                     focusedBorder: OutlineInputBorder(
                       
                        borderSide: const BorderSide(width: 1,color: Colors.grey), 
                        borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),),
   ]
   )
   ),
              ],
            ),
          )
   )
   ) );
  }
}