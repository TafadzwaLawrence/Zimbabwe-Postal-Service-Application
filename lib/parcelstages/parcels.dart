// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'dart:io';


import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_icon/flutter_dynamic_icon.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';


// back option
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

// no back option
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}



class Parcel1 extends StatefulWidget {
  const Parcel1({super.key});

  @override
  State<Parcel1> createState() => _Parcel1State();
}

class _Parcel1State extends State<Parcel1> 
  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;

  String query = '';

  @override
  void initState() {
      super.initState();
      _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      );

      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      );

      _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          
          title: Row(
           
            children: [
              
              FadeTransition
              (
                opacity: _animation,
                child: Text("Parcels"),),
                
            ],
            
          ),
          
           
        ),
      ),
      body:  PageView(
        children: [
          Container(

            
             child: Column(
              children: 
              [
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),

                          ],
                        ),
                      ),
                Text('Step 1'),
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
   


                          ],
                        ),
                      ),
                      Image.asset(
                        'images/logo-0.png',
                        width: 200,
                        height: 200,
                      ),
                    const Center(
                        child:  Padding(
                          padding:  EdgeInsets.all(30.0),
                          child:  Column(
                            children: [
                              Text(
                              "Identify the location of where you want to post your package International or Local"
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          
                          const SizedBox(
                            width: 100,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () { 
                                nextScreen(context, Parcel2());
                              },
                              child: Text(
                                'Next page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          )
                      ],
                      )
              ]
              ),
          )
        ],
      ),
    );
  }
}





class Parcel2 extends StatefulWidget {
  const Parcel2({super.key});

  @override
  State<Parcel2> createState() => _Parcel2State();
}

class _Parcel2State extends State<Parcel2> 
  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;


  String query = '';

  @override
  void initState() {
      super.initState();
      _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      );

      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      );

      _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          
          title: Row(
           
            children: [
              
              FadeTransition
              (
                opacity: _animation,
                child: Text("Parcels"),),
                
            ],
            
          ),
          
           
        ),
      ),
      body:  PageView(
        children: [
          Container(

            
             child: Column(
              children: 
              [
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),

                          ],
                        ),
                      ),
                Text('Step 2'),
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
   


                          ],
                        ),
                      ),
                      Image.asset(
                        'images/logo-0.png',
                        width: 200,
                        height: 200,
                      ),
                    const Center(
                        child:  Padding(
                          padding:  EdgeInsets.all(30.0),
                          child:  Column(
                            children: [
                              Text(
                              "Identify how much your parcel weighs"
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () {
                                nextScreen(context, Parcel1());
                               },
                              child: const Text(
                                'Previous page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () { 
                                nextScreen(context, Parcel3());
                              },
                              child: Text(
                                'Next page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          )
                      ],
                      )
              ]
              ),
          )
        ],
      ),
    );
  }
}




class Parcel3 extends StatefulWidget {
  const Parcel3({super.key});

  @override
  State<Parcel3> createState() => _Parcel3State();
}

class _Parcel3State extends State<Parcel3> 
  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;
  

  String query = '';

  @override
  void initState() {
      super.initState();
      _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      );

      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      );

      _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          
          title: Row(
           
            children: [
              
              FadeTransition
              (
                opacity: _animation,
                child: Text("Parcels"),),
                
            ],
            
          ),
          
           
        ),
      ),
      body:  PageView(
        children: [
          Container(

            
             child: Column(
              children: 
              [
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),

                          ],
                        ),
                      ),
                Text('Step 3'),
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
   


                          ],
                        ),
                      ),
                      Image.asset(
                        'images/logo-0.png',
                        width: 200,
                        height: 200,
                      ),
                    const Center(
                        child:  Padding(
                          padding:  EdgeInsets.all(30.0),
                          child:  Column(
                            children: [
                              Text(
                              "Do not package contents in a wrapped box"
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () {
                                nextScreen(context, Parcel3());
                               },
                              child: const Text(
                                'Previous page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () { 
                                // nextScreen(context, DocumentsStep3());
                              },
                              child: Text(
                                'Next page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          )
                      ],
                      )
              ]
              ),                    
          )
        ],
      ),
    );
  }
}




class Parcel4 extends StatefulWidget {
  const Parcel4({super.key});

  @override
  State<Parcel4> createState() => _Parcel4State();
}

class _Parcel4State extends State<Parcel4> 
  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;
  

  String query = '';

  @override
  void initState() {
      super.initState();
      _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      );

      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      );

      _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          
          title: Row(
           
            children: [
              
              FadeTransition
              (
                opacity: _animation,
                child: Text("Parcels"),),
                
            ],
            
          ),
          
           
        ),
      ),
      body:  PageView(
        children: [
          Container(

            
             child: Column(
              children: 
              [
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),

                          ],
                        ),
                      ),
                Text('Step 4'),
                //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
   


                          ],
                        ),
                      ),
                      Image.asset(
                        'images/logo-0.png',
                        width: 200,
                        height: 200,
                      ),
                    const Center(
                        child:  Padding(
                          padding:  EdgeInsets.all(30.0),
                          child:  Column(
                            children: [
                              Text(
                              "Identify the location of where you want to post your package International or Local"
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () {
                                // nextScreen(context, DocumentsStep2());
                               },
                              child: const Text(
                                'Previous page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.focused))
                                      return Colors.red;
                                    return null; // Defer to the widget's default.
                                  }
                                ),
                              ),
                              onPressed: () { 
                                // nextScreen(context, DocumentsStep3());
                              },
                              child: Text(
                                'Next page',
                                style: TextStyle(
                                      color: Color(0xFf312783)
                                    ),
                                ),
                          )
                      ],
                      )
              ]
              ),
          )
        ],
      ),
    );
  }
}