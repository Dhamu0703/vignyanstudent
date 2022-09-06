import 'package:flutter/material.dart';
import 'package:vignyan/assignment.dart';
import 'package:vignyan/home.dart';
import 'package:vignyan/onlineclass.dart';
import 'package:vignyan/profile.dart';
import 'package:vignyan/timetable.dart';
import 'package:vignyan/trasnport.dart';




class navigation extends StatelessWidget {
const navigation({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Bottom NavBar Demo',
	theme: ThemeData(
		primaryColor: Color.fromARGB(255, 255, 255, 255),
		// splashColor: Colors.transparent,
		// highlightColor: Colors.transparent,
		// hoverColor: Colors.transparent,
	),
	debugShowCheckedModeBanner: false,
	home: const navi(),
	);
}
}

class navi extends StatefulWidget {
const navi({Key? key}) : super(key: key);

@override
_naviState createState() => _naviState();
}

class _naviState extends State<navi> {
int pageIndex = 2;

final pages = [
	const time(),
	const assignment(),
	const home(),
	const onlineclass(),
  const profile(),
];

@override
Widget build(BuildContext context) {
	return Scaffold(

	body: pages[pageIndex],
	bottomNavigationBar: buildMyNavBar(context),
	);
}

Container buildMyNavBar(BuildContext context) {
	return Container(
	height: 60,
	decoration: BoxDecoration(
		color: Theme.of(context).primaryColor,
		borderRadius: const BorderRadius.only(
		topLeft: Radius.circular(20),
		topRight: Radius.circular(20),
		),
	),
	child: Row(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children: [


		IconButton(
			enableFeedback: false,
			onPressed: () {
  //        Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const timetable()),
  // );

			setState(() {
				pageIndex = 0;
			});
			},
			icon: pageIndex == 0
				? const Image(  
					image: AssetImage("assets/TT.png"),
				 color: Color.fromARGB(255, 41, 52, 98),
					// size: 35,
				)
				: const Image(
					image: AssetImage("assets/TT.png"),
					color: Colors.grey,
					// size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 1;
			});
			},
			icon: pageIndex == 1
				? const Image(
					image: AssetImage("assets/assign.png"),
				 color: Color.fromARGB(255, 41, 52, 98),
					// size: 35,
				)
				: const Image(
					image: AssetImage("assets/assign.png"),
					color: Colors.grey,
					// size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 2;
			});
			},
			icon: pageIndex == 2
				? const Image(
					image: AssetImage("assets/hp.png"),
					color: Color.fromARGB(255, 41, 52, 98),
					// size: 35,
				)
				: const Image(
					image: AssetImage("assets/hp.png"),
					color: Colors.grey,
					// size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 3;
			});
			},
			icon: pageIndex == 3
				? const Image(
					image: AssetImage("assets/globe.png"),
					color: Color.fromARGB(255, 41, 52, 98),
					// size: 35,
				)
				: const Image(
					image: AssetImage("assets/globe.png"),
					color: Colors.grey,
					// size: 35,
				),
		),
    		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 4;
			});
			},
			icon: pageIndex == 4
				? const Image(
					image: AssetImage("assets/per.png"),
					color: Color.fromARGB(255, 41, 52, 98),
					// size: 35,
				)
				: const Image(
					image: AssetImage("assets/per.png"),
					color: Colors.grey,
					// size: 35,
				),
		),
	
    ],
	),
	);
}
}

class Page1 extends StatelessWidget {
const Page1({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 1",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page2 extends StatelessWidget {
const Page2({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 2",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page3 extends StatelessWidget {
const Page3({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 3",
		style: TextStyle(
			// color: Color.fromARGB(255, 27, 28, 94),
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page4 extends StatelessWidget {
const Page4({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 4",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}
class Page5 extends StatelessWidget {
const Page5({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 1",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}










