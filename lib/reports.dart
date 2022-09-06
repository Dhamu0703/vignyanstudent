import 'package:flutter/material.dart';

final TextEditingController _con2=TextEditingController();
class reports extends StatefulWidget {
  const reports({Key? key}) : super(key: key);

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> with SingleTickerProviderStateMixin{
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
  @override
  Widget build(BuildContext context) {
   var currentdate = DateTime.now();
    print(currentdate.year);
    print(currentdate.month);
    print(currentdate.day);
    print(currentdate.minute);
    print(currentdate.second);
    print(currentdate.microsecondsSinceEpoch);
    print(currentdate.add(Duration(days:0,hours: 0,minutes: 20)));
     DateTime _dateTime = DateTime(2022);
     String _selectedDate;
    
    var laterdate=currentdate.add(Duration(seconds: 5));
  
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Assignment Reports",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
     body: SafeArea(child: 
      SingleChildScrollView(
                child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),

                  // Center(
                  //   child: Container(
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(20),
                  //       child:Image.asset('assets/writing.jpg',fit: BoxFit.cover,
                  //       )),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                   Center(
                     child: Container(
             height: 50,
             width: 180,
             child: TextField(
                controller: _con2,
                           keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              suffixIcon: 
                              IconButton(onPressed: ()async{
                                 var value;
                                 _con2.text=value.toString().split(' ')[0];
                                 showDatePicker(context: context, 
        initialDate:_dateTime, 
        firstDate: DateTime(2000), lastDate: DateTime(3000),);
                           
                             
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
                cls(),
                hom()
           ]))
            ]
  ),

  
          ) 
        
  )
  )
  );
  }
}

class cls extends StatefulWidget {
  const cls({Key? key}) : super(key: key);

  @override
  State<cls> createState() => _clsState();
}

class _clsState extends State<cls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
      //  height: 300,
// padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 270,
              width: double.infinity,
              
              
              // color: Colors.amber,
              child: Card(
                shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),),
                color: Color.fromARGB(255, 41, 52, 98),
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(60)
               
              ),
               padding: EdgeInsets.all(15),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,
                       color: Colors.white),
                       ),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Status", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 100,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Submitted Date", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 43,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 32,
                       ),
            //            ElevatedButton(
            //              style: ElevatedButton.styleFrom(
            //    shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0)),
            //   minimumSize: Size(80, 30),
            //   primary: Color.fromARGB(0, 70, 71, 71),
            // ),
            //              onPressed: (){}, child: Text("Download File",style: TextStyle(
            //                color: Colors.black
            //              ),),
                       
            //            )
             Text("23.05.2022", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Marks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 101,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       SizedBox(
                          height: 40,
                       ),
                       SizedBox(width: 5,),
                       Text("80",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                       Row(
                     children: [
                       Text("Remarks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 85,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 33,
                       ),
                       Text("Good",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(95, 35),
              primary: Color.fromARGB(255, 255, 255, 255),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const reports()),
    //    );
       }, 
  child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 41, 52, 98),
            fontSize: 20),))
          
           ] 
           ),

            )
         ),
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 270,
              width: double.infinity,
              
              
              // color: Colors.amber,
              child: Card(
                shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),),
                color: Color.fromARGB(255, 41, 52, 98),
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(60)
               
              ),
               padding: EdgeInsets.all(15),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,
                       color: Colors.white),
                       ),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Status", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 100,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Submitted Date", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 43,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 32,
                       ),
            //            ElevatedButton(
            //              style: ElevatedButton.styleFrom(
            //    shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0)),
            //   minimumSize: Size(80, 30),
            //   primary: Color.fromARGB(0, 70, 71, 71),
            // ),
            //              onPressed: (){}, child: Text("Download File",style: TextStyle(
            //                color: Colors.black
            //              ),),
                       
            //            )
             Text("23.05.2022", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Marks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 101,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       SizedBox(
                          height: 40,
                       ),
                       SizedBox(width: 5,),
                       Text("80",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                       Row(
                     children: [
                       Text("Remarks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 85,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 33,
                       ),
                       Text("Good",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(95, 35),
              primary: Color.fromARGB(255, 255, 255, 255),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const reports()),
    //    );
       }, 
  child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 41, 52, 98),
            fontSize: 20),))
          
           ] 
           ),

            )
         ),
         ),
         
     
      
   ]  ) )
        )) );
  }
}

class hom extends StatefulWidget {
  const hom({Key? key}) : super(key: key);

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
      //  height: 300,
// padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 270,
              width: double.infinity,
              
              
              // color: Colors.amber,
              child: Card(
                shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),),
                color: Color.fromARGB(255, 41, 52, 98),
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(60)
               
              ),
               padding: EdgeInsets.all(15),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,
                       color: Colors.white),
                       ),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Status", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 100,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Submitted Date", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 43,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 32,
                       ),
            //            ElevatedButton(
            //              style: ElevatedButton.styleFrom(
            //    shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0)),
            //   minimumSize: Size(80, 30),
            //   primary: Color.fromARGB(0, 70, 71, 71),
            // ),
            //              onPressed: (){}, child: Text("Download File",style: TextStyle(
            //                color: Colors.black
            //              ),),
                       
            //            )
             Text("23.05.2022", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Marks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 101,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       SizedBox(
                          height: 40,
                       ),
                       SizedBox(width: 5,),
                       Text("80",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                       Row(
                     children: [
                       Text("Remarks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 85,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 33,
                       ),
                       Text("Good",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(95, 35),
              primary: Color.fromARGB(255, 255, 255, 255),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const reports()),
    //    );
       }, 
  child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 41, 52, 98),
            fontSize: 20),))
          
           ] 
           ),

            )
         ),
         ),
         Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 270,
              width: double.infinity,
              
              
              // color: Colors.amber,
              child: Card(
                shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),),
                color: Color.fromARGB(255, 41, 52, 98),
                // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(60)
               
              ),
               padding: EdgeInsets.all(15),
               height: 95,
               width: double.infinity,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Subject", style: TextStyle(fontWeight: FontWeight.bold,
                       color: Colors.white),
                       ),
                       SizedBox(
                         width: 93,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Tamil",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Status", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 100,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                    SizedBox(
                     height: 20,
                   ),
           Row(
                     children: [
                       Text("Submitted Date", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 43,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 32,
                       ),
            //            ElevatedButton(
            //              style: ElevatedButton.styleFrom(
            //    shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0)),
            //   minimumSize: Size(80, 30),
            //   primary: Color.fromARGB(0, 70, 71, 71),
            // ),
            //              onPressed: (){}, child: Text("Download File",style: TextStyle(
            //                color: Colors.black
            //              ),),
                       
            //            )
             Text("23.05.2022", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Text("Marks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 101,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 30,
                       ),
                       SizedBox(
                          height: 40,
                       ),
                       SizedBox(width: 5,),
                       Text("80",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ],
                   ),
                    SizedBox(
                     height: 10,
                   ),
                       Row(
                     children: [
                       Text("Remarks", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 85,
                       ),
                       Text(":",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         width: 33,
                       ),
                       Text("Good",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(95, 35),
              primary: Color.fromARGB(255, 255, 255, 255),
            ),
               
            onPressed: (){
    //           Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const reports()),
    //    );
       }, 
  child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 41, 52, 98),
            fontSize: 20),))
          
           ] 
           ),

            )
         ),
         ),
         
     
      
   ]  ) )
        )) );
  }
}