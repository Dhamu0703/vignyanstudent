import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vignyan/reports.dart';

final TextEditingController _con2=TextEditingController();
class assignhistory extends StatefulWidget {
  const assignhistory({Key? key}) : super(key: key);

  @override
  State<assignhistory> createState() => _assignhistoryState();
}

class _assignhistoryState extends State<assignhistory> with SingleTickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
  
    var laterdate=currentdate.add(Duration(seconds: 5));
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Assignment",style: TextStyle(
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
                        child:Image.asset('assets/writing.jpg',fit: BoxFit.cover,
                        )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
         SizedBox(
           height: 10,
         ),
      
         Container(
          //  height: 70,

           margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
          //  padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
           
          //  width: MediaQuery.of(context).size.height,
           decoration: BoxDecoration(
             color: Color.fromARGB(255, 41, 52, 98),
             borderRadius: BorderRadius.circular(5),
           ),
           child: Column(
             children: [
               Padding(padding: EdgeInsets.all(0),
               child: TabBar(
                 padding: EdgeInsets.all(2),
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                 labelColor: Colors.black,
                
                 controller: tabController,
                 tabs: [
                   Tab(
                     text: "ClassWork",
                   ),
                   Tab(
                     text: "Home Work",
                   )
                 ]),
               ),
             ],
           ),
         ),
      
   Container(
     height: 400,
           child:
           TabBarView(
             controller: tabController,
             children: [
                tab1(),
                tab2()
           ]))
  ]
  ),

  
          ) 
          ) 
          )
          );
  }
}


class tab1 extends StatefulWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(  
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),

           ] ),

            )
         )
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),

           ] ),

            )
         )
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),

           ] ),

            )
         )
         ),
         SizedBox(
           height: 10,
         ),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(100, 45),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const navigation()),
    //    );
       }, 
  child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),)),
              SizedBox(
           height: 10,
         ),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(100, 45),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const reports()),
       );
       }, 
  child: Text("View Reports",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),))
          ],
        ),
      ),
     
      
     ) ));
  }
}
class tab2 extends StatefulWidget {
  const tab2({Key? key}) : super(key: key);

  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
       
padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                  

           ] ),

            )
         )
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),

           ] ),

            )
         )
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 220,
              width: double.infinity,
              
              // color: Colors.amber,
              child: Card(
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               padding: EdgeInsets.all(10),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
           Row(
                     children: [
                       Text("Chapter", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("1",style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Assignment File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 40,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Download File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Upload File", style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 72,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(80, 30),
              primary: Color.fromARGB(0, 70, 71, 71),
            ),
                         onPressed: (){}, child: Text("Upload File",style: TextStyle(
                           color: Colors.black
                         ),),
                       
                       )
                     ],
                   ),

           ] ),

            )
         )
         ),
          SizedBox(
           height: 10,
         ),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(100, 45),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const navigation()),
    //    );
       }, 
  child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),)),
              SizedBox(
           height: 10,
         ),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(100, 45),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const reports()),
       );
       }, 
  child: Text("View Reports",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),))
          ],
        ),
      ),
     
      
     ) ));
  }
}