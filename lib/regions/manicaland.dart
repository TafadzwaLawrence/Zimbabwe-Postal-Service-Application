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


class Manicaland extends StatefulWidget {
  const Manicaland({super.key});

  @override
  State<Manicaland> createState() => _ManicalandState();
}

class _ManicalandState extends State<Manicaland> 
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
                  "Manicaland",
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
                  nextScreen(context, Headlands());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: Center(child: Text('Headlands')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Birchenough());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: Center(child: Text('Birchenough')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chimanimani());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chimanimani')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chipinge());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chipinge')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Checheche());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Checheche')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // nextScreen(context, Chibuwe());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chibuwe')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                  nextScreen(context, Danagamvura());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Danagamvura')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              


              GestureDetector(
                onTap: () {
                  // nextScreen(context, Dorowa());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Dorowa')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // nextScreen(context, Dete());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Entumbane')),
                ),
              ),
              SizedBox(
                height: 10,
              ),


              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Esigodini')),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Hauna());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Hauna')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              

              GestureDetector(
                onTap: () {
                  nextScreen(context, Murambinda());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Murambinda')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Mutare());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mutare')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                  nextScreen(context, MtSelinda());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('MtSelinda')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Dorowa')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Murambinda')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Llewellin Barracks')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mutasa')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Kariba')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Karoi')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Macheke')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Magunje')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Marondera')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mazowe')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mhangura')),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('MtDarwin')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mudzi')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Murehwa')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Murombedzi')),
              ),
              SizedBox(
                height: 10,
              ),Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Musengezi')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mutoko')),
              ),
              SizedBox(
                height: 10,
              ),

               Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mutawatawa')),
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Mutorashanga')),
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Muzarabani')),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Birchenough extends StatefulWidget {
  const Birchenough({super.key});

  @override
  State<Birchenough> createState() => _BirchenoughState();
}

class _BirchenoughState extends State<Birchenough> with SingleTickerProviderStateMixin{

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
                Text('Birchenough Branch information'),
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
                              Text("Mobile Contact    	(+263)775 707 089"),
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
                              Text("Physical Address"),
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

class Chimanimani extends StatefulWidget {
  const Chimanimani({super.key});

  @override
  State<Chimanimani> createState() => _ChimanimaniState();
}

class _ChimanimaniState extends State<Chimanimani> with SingleTickerProviderStateMixin{

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
                Text('Chimanimani Branch information'),
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
                              
                              Text("Office Contact        (+263)86-22199/22230"),
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
                              Text("Mobile Contact    	(+263)773 639 104"),
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
                              Text("Physical Address 98 Park Avenue"),
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

class Chipinge extends StatefulWidget {
  const Chipinge({super.key});

  @override
  State<Chipinge> createState() => _ChipingeState();
}

class _ChipingeState extends State<Chipinge> with SingleTickerProviderStateMixin{

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
                Text('Chipinge Branch information'),
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
                              
                              Text("Office Contact        (+263)9-467941/3"),
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
                              Text("Mobile Contact    	(+263)778 421 506"),
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
                              Text("Physical Address 25 Plumtree Road, Stand No. 282165200"),
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

class Checheche extends StatefulWidget {
  const Checheche({super.key});

  @override
  State<Checheche> createState() => _ChechecheState();
}

class _ChechecheState extends State<Checheche> with SingleTickerProviderStateMixin{

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
                Text('Chakari Branch information'),
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
                              
                              Text("Office Contact        (+263)15-688"),
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
                              Text("Mobile Contact    	(+263)778 421 254"),
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
                              Text("Physical Address Binga centre"),
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

class Danagamvura extends StatefulWidget {
  const Danagamvura({super.key});

  @override
  State<Danagamvura> createState() => _DanagamvuraState();
}

class _DanagamvuraState extends State<Danagamvura> with SingleTickerProviderStateMixin{

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
                Text('Danagamvura Branch information'),
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
                              
                              Text("Office Contact        (+263)9-62535"),
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
                              Text("Mobile Contact    	(+263) 712 831 233"),
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
                              Text("Physical Address 241532400 Main Street /8th Avenue"),
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

class Headlands extends StatefulWidget {
  const Headlands({super.key});

  @override
  State<Headlands> createState() => _HeadlandsState();
}

class _HeadlandsState extends State<Headlands> with SingleTickerProviderStateMixin{

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
                Text('Headlands Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Hauna  extends StatefulWidget {
  const Hauna({super.key});

  @override
  State<Hauna> createState() => _HaunaState();
}

class _HaunaState extends State<Hauna> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Murambinda extends StatefulWidget {
  const Murambinda({super.key});

  @override
  State<Murambinda> createState() => _MurambindaState();
}

class _MurambindaState extends State<Murambinda> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Mutare extends StatefulWidget {
  const Mutare({super.key});

  @override
  State<Mutare> createState() => _MutareState();
}

class _MutareState extends State<Mutare> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class MtSelinda extends StatefulWidget {
  const MtSelinda({super.key});

  @override
  State<MtSelinda> createState() => _MtSelindaState();
}

class _MtSelindaState extends State<MtSelinda> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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


class Marange extends StatefulWidget {
  const Marange({super.key});

  @override
  State<Marange> createState() => _MarangeState();
}

class _MarangeState extends State<Marange> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Mutasa extends StatefulWidget {
  const Mutasa({super.key});

  @override
  State<Mutasa> createState() => _MutasaState();
}

class _MutasaState extends State<Mutasa> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Nyanga extends StatefulWidget {
  const Nyanga({super.key});

  @override
  State<Nyanga> createState() => _NyangaState();
}

class _NyangaState extends State<Nyanga> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Nyamaropa extends StatefulWidget {
  const Nyamaropa({super.key});

  @override
  State<Nyamaropa> createState() => _NyamaropaState();
}

class _NyamaropaState extends State<Nyamaropa> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Nhedziwa extends StatefulWidget {
  const Nhedziwa({super.key});

  @override
  State<Nhedziwa> createState() => _NhedziwaState();
}

class _NhedziwaState extends State<Nhedziwa> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Nyazura extends StatefulWidget {
  const Nyazura({super.key});

  @override
  State<Nyazura> createState() => _NyazuraState();
}

class _NyazuraState extends State<Nyazura> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Nyanyadzi extends StatefulWidget {
  const Nyanyadzi({super.key});

  @override
  State<Nyanyadzi> createState() => _NyanyadziState();
}

class _NyanyadziState extends State<Nyanyadzi> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Rusape extends StatefulWidget {
  const Rusape({super.key});

  @override
  State<Rusape> createState() => _RusapeState();
}

class _RusapeState extends State<Rusape> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Sakubva extends StatefulWidget {
  const Sakubva({super.key});

  @override
  State<Sakubva> createState() => _SakubvaState();
}

class _SakubvaState extends State<Sakubva> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Odzi extends StatefulWidget {
  const Odzi({super.key});

  @override
  State<Odzi> createState() => _OdziState();
}

class _OdziState extends State<Odzi> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Penhalonga extends StatefulWidget {
  const Penhalonga({super.key});

  @override
  State<Penhalonga> createState() => _PenhalongaState();
}

class _PenhalongaState extends State<Penhalonga> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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

class Watsomba extends StatefulWidget {
  const Watsomba({super.key});

  @override
  State<Watsomba> createState() => _WatsombaState();
}

class _WatsombaState extends State<Watsomba> with SingleTickerProviderStateMixin{

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
                Text('Dete Branch information'),
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
                              
                              Text("Office Contact        (+263)13-44647"),
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
                              Text("Mobile Contact    	"),
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
                              Text("Physical Address "),
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
