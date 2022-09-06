
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vignyan/navigation.dart';
import 'package:get/route_manager.dart';
import 'assignment.dart';
import 'home.dart';
import 'onlineclass.dart';
import 'profile.dart';


final TextEditingController _con2=TextEditingController();
// final DateRangePickerController _datePickerController = DateRangePickerController();
class time extends StatefulWidget {
  
  const time({Key? key}) : super(key: key);

  @override
  
  State<time> createState() => _timeState();

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
class _timeState extends State<time>   with SingleTickerProviderStateMixin  {
   TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length:6, vsync: this);
    super.initState();
  }
    @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }


  int _count = 1;
  void _incrementCount(){
    if(_count!=4){
   setState(() {
      _count++;
    });
    }
 
  }
  void _decrementcount(){
    if(_count!=1){
         setState(() {
      _count--;
    });
    }
   
  }
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
         leading: BackButton(color: Colors.white,
        onPressed: (){
          print("object");
         Get.offAll(()=>navigation());
        },
        ),
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Time Table",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
      body: SingleChildScrollView(
        
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

                Center(
                  child: Container(
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(20),
                      child:Image.asset('assets/tim.jpg',fit: BoxFit.cover,
                      )),
                  ),
                ),

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
                               var value;
                               _con2.text=value.toString().split(' ')[0];
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
        SingleChildScrollView(
          child:
         Column(
           children: [Card(
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Time", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("9.00 - 10.00",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 25,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Lecturer",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 20,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),

                 ],
               ),
             ),
           ),
           Column(
           children: [Card(
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Time", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("10.00 - 11.00",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 25,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("English",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Lecturer",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 20,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   
                 ],
               ),
             ),
           )],
         ),
           Column(
           children: [Card(
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Time", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("11.00 - 12.00",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 25,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Maths",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Lecturer",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 20,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   
                 ],
               ),
             ),
           )],
         ),
           Column(
           children: [Card(
             margin: EdgeInsets.all(10),
             
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Time", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("12.00 - 01.00",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 25,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Science",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                     SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Lecturer",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 20,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Joseph",style: TextStyle(fontWeight: FontWeight.bold),),
                       
                     ],
                   ),
                   
                 ],
               ),
             ),
           )],
         ),
           ],

         ),
 
       ) ,
       ]
        ),
      

     ) );
    
  }
}
















