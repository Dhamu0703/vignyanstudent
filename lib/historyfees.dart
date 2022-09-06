import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class historyfees extends StatefulWidget {
  const historyfees({Key? key}) : super(key: key);

  @override
  State<historyfees> createState() => _historyfeesState();
}

class _historyfeesState extends State<historyfees>with SingleTickerProviderStateMixin {
 TabController? tabController;
  //  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Fees History",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
    body:  SafeArea(child: 
    SingleChildScrollView(
      child:
    
    Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                       height: 50,
                       width: 180,
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
      
      ),
    ),
     );
  }
}