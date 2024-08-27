 import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
 
 Widget containerWidget() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue)),
    );
  }

  Widget textWidget() {
    return const Text(
      "Hello world!",
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      maxLines: 3,
    );
  }

  Widget textFieldWidget() {
    return const TextField(
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }

  Widget eleButtonWidget() {
    return ElevatedButton(
        onPressed: () {
          print("Clicked ELE");
        },
        child: const Text("Ele button"));
  }

  Widget textButtonWidget() {
    return TextButton(
        onPressed: () {
          print("Clicked Text Button");
        },
        child: const Text("Text button"));
  }

  Widget iconButtonWidget() {
    return IconButton(
        onPressed: () {
          print("Clicked Icon Button");
        },
        icon: const Icon(Icons.add));
  }

  Widget rowWidget() {
    return Row(
      children: [
        Text("Row"),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget columnWidget() {
    return Column(
      children: [
        Text("Column"),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget singleChildrenTest() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text("Single child scroll view with column"),
          Container(
            width: 200,
            height: 250,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 250,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            height: 250,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 250,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget listViewWidget() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text("List View Test"),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget gridViewTest() {
    return GridView(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 4 / 10),
      children: [
        Text("Gride View Test"),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget stackTest() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 150,
          color: Colors.green,
        ),
      ],
    );
  }

//      Align(
//         alignment: Alignment.center,
//         child: Container(
//           width: 150,
//           height: 150,
//           decoration: BoxDecoration(
//             color: Colors.yellowAccent,
//             borderRadius: BorderRadius.circular(100),
//             border: Border.all(
//               color: Colors.black,
//             )
//           ),
//         ),
//       )

// Align(
//         child: Text(
//           "hello world!",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       )

// const TextField(
//         decoration: InputDecoration(
//           // helperText: "this is helper text",
//           hintText: "this is hint",
//           labelText: "enter here",
//           enabledBorder: const OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.amberAccent,
//               width: 2.0
//             ),
//           ),
//         ),
//       )

// ElevatedButton(
//             onPressed: () => {print("hi")},
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.greenAccent,
//             ),
//             child: const Text("click me!"),
//           ),
// TextButton(onPressed: (){print("hello");},
//           child: const Text("text button")
//           ),
// OutlinedButton(
//             onPressed: () {
//               print("asd");
//             },
//             onLongPress: () {
//               print("long press");
//             },
//             child: const Text(
//               "outline button",
//               style: TextStyle(
//                 color: Colors.green,
//               ),
//             ),
//           ),
// IconButton(
//             splashColor: Colors.amberAccent,
//             splashRadius: 70,

//             onPressed: () {
//               print("click");
//             },
//             icon: const Icon(
//               Icons.favorite,
//               color: Colors.pink,

//               ),
//               iconSize: 100,
//           ),
// Align(
//         alignment: Alignment.center,
//         child:  SizedBox(
//         height: 300,
//         width: 300,
//         child:  Image(
//           image: AssetImage('assets/images/jupiter.jpg'),
//           fit: BoxFit.fill,
//         )
//       ),
//       )
  ///only differance is Row and Column
// Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             decoration:  BoxDecoration(
//               color: Colors.blueAccent,
//               borderRadius: BorderRadius.circular(50),
//             ),
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             decoration:  BoxDecoration(
//               color: Colors.greenAccent,
//               borderRadius: BorderRadius.circular(50),
//             ),
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             decoration:  BoxDecoration(
//               color: Colors.yellowAccent,
//               borderRadius: BorderRadius.circular(50),
//             ),
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             decoration:  BoxDecoration(
//               color: Colors.redAccent,
//               borderRadius: BorderRadius.circular(25),
//             ),
//           ),

//         ],
//       )
// SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Center(
//           child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.circular(25)
//               ),
//             ),
//             Container(
//               width:75,
//               height: 75,
//               decoration: BoxDecoration(
//                 color: Colors.yellowAccent,
//                 borderRadius: BorderRadius.circular(37)
//               ),
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.redAccent,
//                 borderRadius: BorderRadius.circular(50)
//               ),
//             ),
//             Container(
//               width: 125,
//               height: 125,
//               decoration: BoxDecoration(
//                 color: Colors.greenAccent,
//                 borderRadius: BorderRadius.circular(60)
//               ),
//             ),
//             Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 color: Colors.purpleAccent,
//                 borderRadius: BorderRadius.circular(75)
//               ),
//             ),
//           ],
//         ),
//         )
//       )
// ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           Container(
//             height: 400,
//             color: Colors.amberAccent,
//           ),
//           Container(
//             height: 400,
//             color: Colors.greenAccent,
//           ),
//           Container(
//             height: 400,
//             color: Colors.redAccent,
//           ),
//         ],
//       )
// Stack(
//           alignment: Alignment.center,
//           children: [
//             Container(
//               height: 300,
//               width: 300,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(150),
//                 color: Colors.blueAccent,
//               ),
//             ),
//             Container(
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(75),
//                 color: Colors.redAccent,
//               ),
//             ),
//             Container(
//               height: 75,
//               width: 75,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         )
// Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Expanded(
//                 child: Image.asset('assets/images/jupiter.jpg'),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Image.asset('assets/images/earth.jpg'),
//               ),
//               Expanded(
//                 child: Image.asset('assets/images/jupiter2.jpg'),
//               )
//             ],
//           ),
//         )
// Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(Icons.star, color: Colors.green[500]),
//               Icon(Icons.star, color: Colors.green[500]),
//               Icon(Icons.star, color: Colors.green[500]),
//               const Icon(Icons.star, color: Colors.black),
//               const Icon(Icons.star, color: Colors.black),
//             ],
//           ),