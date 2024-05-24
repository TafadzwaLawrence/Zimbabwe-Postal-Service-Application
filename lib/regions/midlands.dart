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
import 'package:emsparcels/main.dart';



// back option
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

// no back option
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}


class Midlands extends StatefulWidget {
  const Midlands({super.key});

  @override
  State<Midlands> createState() => _MidlandsState();
}

class _MidlandsState extends State<Midlands> 
 with SingleTickerProviderStateMixin {

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
  void dispose() {
      _controller.dispose();
      super.dispose();
  }

  final _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeTransition
              (
                opacity: _animation,
                child: const Text(
                  "Midlands",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
               )
            ],
          ),
        ),
      ),

      body: PageView(
        children: [
          ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chatsworth());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: Center(child: Text('Chatsworth')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                 nextScreen(context, Charandura());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: Center(child: Text('Charandura')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                nextScreen(context, Chitako());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chitako')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                 nextScreen(context, Chiredzi());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chiredzi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                 nextScreen(context, Chikombedzi());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chikombedzi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                 nextScreen(context, Chivhu());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chivhu')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                 nextScreen(context, Donga());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Donga')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              


              GestureDetector(
                onTap: () {
                  nextScreen(context, Gokwe());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Gokwe')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Gweru());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Gweru')),
                ),
              ),
              SizedBox(
                height: 10,
              ),


              GestureDetector(
                onTap: () {
                  nextScreen(context, Jerera());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Jerera')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Kadoma());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Kadoma')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              

              GestureDetector(
                onTap: () {
                  nextScreen(context, Kwekwe());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Kwekwe')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                 nextScreen(context, Manoti());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Manoti')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                 nextScreen(context, Makuvatsine());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Makuvatsine')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Mataga());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mataga')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap:(){
                  nextScreen(context, Mashava());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mashava')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: ()
                {
                  nextScreen(context, Masase());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Masase')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Masvingo());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Masvingo')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Mberengwa());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mberengwa')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Mbizo());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mbizo')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Morgenster());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Morgenster')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Mkoba());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mkoba')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Mpandawana());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mpandawana')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Mvuma());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mvuma')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Mwenezi());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mwenezi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Nembudziya());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Nembudziya')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Ngundu());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Ngundu')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Nyika());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Nyika')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Renco());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Renco')),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),Container(
              //   height: 50,
              //   color: Colors.amber[100],
              //   child: Center(child: Text('Musengezi')),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   height: 50,
              //   color: Colors.amber[100],
              //   child: Center(child: Text('Mutoko')),
              // ),
              // SizedBox(
              //   height: 10,
              // ),

              //  Container(
              //   height: 50,
              //   color: Colors.amber[100],
              //   child: Center(child: Text('Mutawatawa')),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              //  Container(
              //   height: 50,
              //   color: Colors.amber[100],
              //   child: Center(child: Text('Mutorashanga')),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              //  Container(
              //   height: 50,
              //   color: Colors.amber[100],
              //   child: Center(child: Text('Muzarabani')),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          )
        ],
      ),
    );
  }
}

class Chatsworth extends StatefulWidget {
  const Chatsworth({super.key});

  @override
  State<Chatsworth> createState() => _ChatsworthState();
}

class _ChatsworthState extends State<Chatsworth> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Chatsworth Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact        (+263)030-8331"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact    	(+263)778 445 086"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address          Stand Number 48 Chatsworth B/Center"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Charandura extends StatefulWidget {
  const Charandura({super.key});

  @override
  State<Charandura> createState() => _CharanduraState();
}

class _CharanduraState extends State<Charandura> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Charandura Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact        -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact    	(+263)778 445 087"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address         Stand Number 596/7 Charandura Business Center"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Chitako extends StatefulWidget {
  const Chitako({super.key});

  @override
  State<Chitako> createState() => _ChitakoState();
}

class _ChitakoState extends State<Chitako> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Chitako Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact        (+263)319 262 119"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact    	(+263)778 445 075"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address            2042 Charumbira Street Mucheke Masvingo"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Chiredzi extends StatefulWidget {
  const Chiredzi({super.key});

  @override
  State<Chiredzi> createState() => _ChiredziState();
}

class _ChiredziState extends State<Chiredzi> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Chiredzi Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact        (+263)31-2361/2213"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263)778 445 072"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:     Cnr Chilonga & Mopane Drive"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Chikombedzi extends StatefulWidget {
  const Chikombedzi({super.key});

  @override
  State<Chikombedzi> createState() => _ChikombedziState();
}

class _ChikombedziState extends State<Chikombedzi> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Chikombedzi Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact        -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263) 778 445 977"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:       Chikombedzi B/Centre Chikombedzi"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Chivhu extends StatefulWidget {
  const Chivhu({super.key});

  @override
  State<Chivhu> createState() => _ChivhuState();
}

class _ChivhuState extends State<Chivhu> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Chivhu Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263)054-212 2481"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263) 774 384 725"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:      Std No 362/3/4 York street "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Donga extends StatefulWidget {
  const Donga({super.key});

  @override
  State<Donga> createState() => _DongaState();
}

class _DongaState extends State<Donga> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Donga Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263) 778 445 081"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:             Chachacha B/Centre Chachacha "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Gokwe  extends StatefulWidget {
  const Gokwe({super.key});

  @override
  State<Gokwe> createState() => _GokweState();
}

class _GokweState extends State<Gokwe> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Gokwe Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263)055 2592735"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	 (+263) 773 080 765"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address: "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Gweru extends StatefulWidget {
  const Gweru({super.key});

  @override
  State<Gweru> createState() => _GweruState();
}

class _GweruState extends State<Gweru> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Gweru Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263) 773 933 297"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address: "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Jerera extends StatefulWidget {
  const Jerera({super.key});

  @override
  State<Jerera> createState() => _JereraState();
}

class _JereraState extends State<Jerera> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Jerera Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263)34 2333"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	(+263) 778 445 084"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:            Std No. 40 Jerera Centre"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Kadoma extends StatefulWidget {
  const Kadoma({super.key});

  @override
  State<Kadoma> createState() => _KadomaState();
}

class _KadomaState extends State<Kadoma> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Kadoma Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) 06821 24212"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	  (+263) 773 472 717/ 0716 860 900"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           336 R Mugabe Kadoma"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Kwekwe extends StatefulWidget {
  const Kwekwe({super.key});

  @override
  State<Kwekwe> createState() => _KwekweState();
}

class _KwekweState extends State<Kwekwe> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Kwekwe Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        	(+263)55 23530"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	  +263) 778 445 065"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:                 63 R.Mugabe Way"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Manoti extends StatefulWidget {
  const Manoti({super.key});

  @override
  State<Manoti> createState() => _ManotiState();
}

class _ManotiState extends State<Manoti> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Manoti Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    		(+263) 772 412 276"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:            p/o Manoti"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}


class Makuvatsine extends StatefulWidget {
  const Makuvatsine({super.key});

  @override
  State<Makuvatsine> createState() => _MakuvatsineState();
}

class _MakuvatsineState extends State<Makuvatsine> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Makuvatsine Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    		(+263) 777 358 558"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           	p/o Makuvatsine "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mataga extends StatefulWidget {
  const Mataga({super.key});

  @override
  State<Mataga> createState() => _MatagaState();
}

class _MatagaState extends State<Mataga> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mataga Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        +263) 0517 212"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	  (+263) 778 445 092"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:                   Std No. 69 Mataga B/Centre Mataga "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mashava extends StatefulWidget {
  const Mashava({super.key});

  @override
  State<Mashava> createState() => _MashavaState();
}

class _MashavaState extends State<Mashava> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mashava Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) 035 2212"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	   +263) 778 445 088 "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           Std No. Mashava"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Masase extends StatefulWidget {
  const Masase({super.key});

  @override
  State<Masase> createState() => _MasaseState();
}

class _MasaseState extends State<Masase> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Masase Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	       (+263) 714 563 865"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:             p/o Masase"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Masvingo extends StatefulWidget {
  const Masvingo({super.key});

  @override
  State<Masvingo> createState() => _MasvingoState();
}

class _MasvingoState extends State<Masvingo> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Masvingo Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) 039-262711/2"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	      (+263) 712 831 200"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           1646 Hughes St"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mberengwa extends StatefulWidget {
  const Mberengwa({super.key});

  @override
  State<Mberengwa> createState() => _MberengwaState();
}

class _MberengwaState extends State<Mberengwa> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mberengwa Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263)518 333"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	    (+263) 778 445 069"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           Std No. 974/1, Mberengwa"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mbizo extends StatefulWidget {
  const Mbizo({super.key});

  @override
  State<Mbizo> createState() => _MbizoState();
}

class _MbizoState extends State<Mbizo> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mbizo Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) 055 400 44"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	      (+263) 778 445 069"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           623/4 Mbizo Section 4 Mbizo"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Morgenster extends StatefulWidget {
  const Morgenster({super.key});

  @override
  State<Morgenster> createState() => _MorgensterState();
}

class _MorgensterState extends State<Morgenster> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Morgenster Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) -"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	    (+263) 775744972"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:          p/o Morgenster"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mkoba extends StatefulWidget {
  const Mkoba({super.key});

  @override
  State<Mkoba> createState() => _MkobaState();
}

class _MkobaState extends State<Mkoba> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mkoba Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:             (+263)054 250013/250104"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	        (+263) 778 393 904"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:             1674 Mkoba 6"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mpandawana extends StatefulWidget {
  const Mpandawana({super.key});

  @override
  State<Mpandawana> createState() => _MpandawanaState();
}

class _MpandawanaState extends State<Mpandawana> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mpandawana Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:           (+263) 30 2336"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	        (+263) 778 445 083 "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           Std No. 285 Mpandawana G/Point"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mvuma extends StatefulWidget {
  const Mvuma({super.key});

  @override
  State<Mvuma> createState() => _MvumaState();
}

class _MvumaState extends State<Mvuma> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mvuma Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        	   (+263)032 333"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	   (+263) 778 445 090"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:              Std No. 152 Heymans & Napier Rd"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Mwenezi extends StatefulWidget {
  const Mwenezi({super.key});

  @override
  State<Mwenezi> createState() => _MweneziState();
}

class _MweneziState extends State<Mwenezi> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Mwenezi Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263)14 333"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	  (+263) 778 445 085"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:          	Std No.1341/1 Mwenezana "),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Nembudziya extends StatefulWidget {
  const Nembudziya({super.key});

  @override
  State<Nembudziya> createState() => _NembudziyaState();
}

class _NembudziyaState extends State<Nembudziya> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Nembudziya Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        (+263) 055 2592645"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	     (+263) 773862083"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:           Nembudziya G/Point"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Ngundu extends StatefulWidget {
  const Ngundu({super.key});

  @override
  State<Ngundu> createState() => _NgunduState();
}

class _NgunduState extends State<Ngundu> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Ngundu Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:          (+263) 036 371"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	     (+263) 778 445 076"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:            	Ngundu B/ Centre Ngundu"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Nyika extends StatefulWidget {
  const Nyika({super.key});

  @override
  State<Nyika> createState() => _NyikaState();
}

class _NyikaState extends State<Nyika> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Nyika Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact:        	(+263)38 241"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	      	(+263) 778 445 090"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:             Std No. 677, Nyika Growth Point"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}

class Renco extends StatefulWidget {
  const Renco({super.key});

  @override
  State<Renco> createState() => _RencoState();
}

class _RencoState extends State<Renco> with SingleTickerProviderStateMixin{

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
      body: PageView(
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
                Text('Renco Branch information'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                                     //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              Text("Office Contact           (+263)36 299"),
                              //  divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Mobile Contact:    	    (+263) 778 445 093"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Physical Address:          Renco Mine"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              
                              ],
                          ),
                        ),
                      ),
                     
              ]
              ),
          )
        ],
      ),
    );
  }
}


