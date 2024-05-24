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


class MatabelelandNorth extends StatefulWidget {
  const MatabelelandNorth({super.key});

  @override
  State<MatabelelandNorth> createState() => _MatabelelandNorthState();
}

class _MatabelelandNorthState extends State<MatabelelandNorth> 
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
                  "Matabeleland",
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
                  nextScreen(context, Ascot());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: Center(child: Text('Ascot')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Beitbridge());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: Center(child: Text('Beitbridge')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Belmont());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Belmont')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Binga());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Binga')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Buluwayo());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Buluwayo')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chinotimba());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chinotimba')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                  nextScreen(context, Buluwayo());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Buluwayo')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              


              GestureDetector(
                onTap: () {
                  nextScreen(context, Dete());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Dete')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // nextScreen(context, Entumbane());
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


              GestureDetector(
                onTap: (){
                  // nextScreen(context, Esigodini)
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Esigodini')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Famona());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Famona')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              

              GestureDetector(
                onTap: () {
                  nextScreen(context, Figtree());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Figtree')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Filabusi());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Filabusi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                  nextScreen(context, Gwanda());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Gwanda')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap:(){
                  nextScreen(context, Hillside());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Hillside')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Hwange());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Hwange')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Barracks);
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Llewellin Barracks')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Lupane());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Lupane')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap:(){
                    nextScreen(context, Luveve());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Luveve')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap:(){
                  nextScreen(context, Magwegwe());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Magwegwe')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Maphisa());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Maphisa')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap:(){
                    nextScreen(context, Matabisa());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Matabisa')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap:(){
                  nextScreen(context, Mbalabala());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mbalabala')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Mpopoma);
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mpopoma')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Morningside());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Morningside')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  nextScreen(context, Mzilikazi());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Mzilikazi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap:(){
                  nextScreen(context, Nkayi());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Nkayi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Nkulumane());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Nkulumane')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Northend());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Northend')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Plumtree());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Plumtree')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  nextScreen(context, Pumula());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Pumula')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

               GestureDetector(
                onTap: (){
                  nextScreen(context, Raylton());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Raylton')),
                             ),
               ),
              SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap: (){
                  nextScreen(context, Shangani());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Shangani')),
                             ),
               ),
              SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap:(){
                  nextScreen(context, Solusi());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Solusi')),
                             ),
               ),
              SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap:(){
                  nextScreen(context, Tsholotsho());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Tsholotsho')),
                             ),
               ),SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap:(){
                  nextScreen(context, Turkmine());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Turkmine')),
                             ),
               ),SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap:(){
                  nextScreen(context, VictoriaFalls());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Victoria Falls')),
                             ),
               ),
               SizedBox(
                height: 10,
              ),
               GestureDetector(
                onTap:(){
                  nextScreen(context, WestNich());
                },
                 child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('West Nich')),
                             ),
               ),
            ],
          )
        ],
      ),
    );
  }
}

class Ascot extends StatefulWidget {
  const Ascot({super.key});

  @override
  State<Ascot> createState() => _AscotState();
}

class _AscotState extends State<Ascot> with SingleTickerProviderStateMixin{ 

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
                Text('Ascot Branch information'),
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

class Beitbridge extends StatefulWidget {
  const Beitbridge({super.key});

  @override
  State<Beitbridge> createState() => _BeitbridgeState();
}

class _BeitbridgeState extends State<Beitbridge> with SingleTickerProviderStateMixin{

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
                Text('Beitbridge Branch information'),
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

class Belmont extends StatefulWidget {
  const Belmont({super.key});

  @override
  State<Belmont> createState() => _BelmontState();
}

class _BelmontState extends State<Belmont> with SingleTickerProviderStateMixin{

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
                Text('Belmont Branch information'),
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

class Binga extends StatefulWidget {
  const Binga({super.key});

  @override
  State<Binga> createState() => _BingaState();
}

class _BingaState extends State<Binga> with SingleTickerProviderStateMixin{

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
                Text('Binga Branch information'),
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

class Buluwayo extends StatefulWidget {
  const Buluwayo({super.key});

  @override
  State<Buluwayo> createState() => _BuluwayoState();
}

class _BuluwayoState extends State<Buluwayo> with SingleTickerProviderStateMixin{

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
                Text('Buluwayo Branch information'),
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

class Chinotimba extends StatefulWidget {
  const Chinotimba({super.key});

  @override
  State<Chinotimba> createState() => _ChinotimbaState();
}

class _ChinotimbaState extends State<Chinotimba> with SingleTickerProviderStateMixin{

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
                Text('Chinotimba Branch information'),
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

class Dete extends StatefulWidget {
  const Dete({super.key});

  @override
  State<Dete> createState() => _DeteState();
}

class _DeteState extends State<Dete> with SingleTickerProviderStateMixin{

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

class Famona  extends StatefulWidget {
  const Famona({super.key});

  @override
  State<Famona> createState() => _FamonaState();
}

class _FamonaState extends State<Famona> with SingleTickerProviderStateMixin{

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

class Figtree extends StatefulWidget {
  const Figtree({super.key});

  @override
  State<Figtree> createState() => _FigtreeState();
}

class _FigtreeState extends State<Figtree> with SingleTickerProviderStateMixin{

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

class Filabusi extends StatefulWidget {
  const Filabusi({super.key});

  @override
  State<Filabusi> createState() => _FilabusiState();
}

class _FilabusiState extends State<Filabusi> with SingleTickerProviderStateMixin{

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

class Gwanda extends StatefulWidget {
  const Gwanda({super.key});

  @override
  State<Gwanda> createState() => _GwandaState();
}

class _GwandaState extends State<Gwanda> with SingleTickerProviderStateMixin{

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

class Hillside extends StatefulWidget {
  const Hillside({super.key});

  @override
  State<Hillside> createState() => _HillsideState();
}

class _HillsideState extends State<Hillside> with SingleTickerProviderStateMixin{

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

class Hwange extends StatefulWidget {
  const Hwange({super.key});

  @override
  State<Hwange> createState() => _HwangeState();
}

class _HwangeState extends State<Hwange> with SingleTickerProviderStateMixin{

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

class Barracks extends StatefulWidget {
  const Barracks({super.key});

  @override
  State<Barracks> createState() => _BarracksState();
}

class _BarracksState extends State<Barracks> with SingleTickerProviderStateMixin{

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

class Lupane extends StatefulWidget {
  const Lupane({super.key});

  @override
  State<Lupane> createState() => _LupaneState();
}

class _LupaneState extends State<Lupane> with SingleTickerProviderStateMixin{

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

class Luveve extends StatefulWidget {
  const Luveve({super.key});

  @override
  State<Luveve> createState() => _LuveveState();
}

class _LuveveState extends State<Luveve> with SingleTickerProviderStateMixin{

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

class Magwegwe extends StatefulWidget {
  const Magwegwe({super.key});

  @override
  State<Magwegwe> createState() => _MagwegweState();
}

class _MagwegweState extends State<Magwegwe> with SingleTickerProviderStateMixin{

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

class Maphisa extends StatefulWidget {
  const Maphisa({super.key});

  @override
  State<Maphisa> createState() => _MaphisaState();
}

class _MaphisaState extends State<Maphisa> with SingleTickerProviderStateMixin{

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

class Matabisa extends StatefulWidget {
  const Matabisa({super.key});

  @override
  State<Matabisa> createState() => _MatabisaState();
}

class _MatabisaState extends State<Matabisa> with SingleTickerProviderStateMixin{

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

class Mbalabala extends StatefulWidget {
  const Mbalabala({super.key});

  @override
  State<Mbalabala> createState() => _MbalabalaState();
}

class _MbalabalaState extends State<Mbalabala> with SingleTickerProviderStateMixin{

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

class Mpopoma extends StatefulWidget {
  const Mpopoma({super.key});

  @override
  State<Mpopoma> createState() => _MpopomaState();
}

class _MpopomaState extends State<Mpopoma> with SingleTickerProviderStateMixin{

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

class Morningside extends StatefulWidget {
  const Morningside({super.key});

  @override
  State<Morningside> createState() => _MorningsideState();
}

class _MorningsideState extends State<Morningside> with SingleTickerProviderStateMixin{

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

class Mzilikazi extends StatefulWidget {
  const Mzilikazi({super.key});

  @override
  State<Mzilikazi> createState() => _MzilikaziState();
}

class _MzilikaziState extends State<Mzilikazi> with SingleTickerProviderStateMixin{

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

class Nkayi extends StatefulWidget {
  const Nkayi({super.key});

  @override
  State<Nkayi> createState() => _NkayiState();
}

class _NkayiState extends State<Nkayi> with SingleTickerProviderStateMixin{

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

class Nkulumane extends StatefulWidget {
  const Nkulumane({super.key});

  @override
  State<Nkulumane> createState() => _NkulumaneState();
}

class _NkulumaneState extends State<Nkulumane> with SingleTickerProviderStateMixin{

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

class Northend extends StatefulWidget {
  const Northend({super.key});

  @override
  State<Northend> createState() => _NorthendState();
}

class _NorthendState extends State<Northend> with SingleTickerProviderStateMixin{

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

class Plumtree extends StatefulWidget {
  const Plumtree({super.key});

  @override
  State<Plumtree> createState() => _PlumtreeState();
}

class _PlumtreeState extends State<Plumtree> with SingleTickerProviderStateMixin{

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

class Pumula extends StatefulWidget {
  const Pumula({super.key});

  @override
  State<Pumula> createState() => _PumulaState();
}

class _PumulaState extends State<Pumula> with SingleTickerProviderStateMixin{

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

class Raylton extends StatefulWidget {
  const Raylton({super.key});

  @override
  State<Raylton> createState() => _RayltonState();
}

class _RayltonState extends State<Raylton> with SingleTickerProviderStateMixin{

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

class Shangani extends StatefulWidget {
  const Shangani({super.key});

  @override
  State<Shangani> createState() => _ShanganiState();
}

class _ShanganiState extends State<Shangani> with SingleTickerProviderStateMixin{

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

class Solusi extends StatefulWidget {
  const Solusi({super.key});

  @override
  State<Solusi> createState() => _SolusiState();
}

class _SolusiState extends State<Solusi> with SingleTickerProviderStateMixin{

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

class Tsholotsho extends StatefulWidget {
  const Tsholotsho({super.key});

  @override
  State<Tsholotsho> createState() => _TsholotshoState();
}

class _TsholotshoState extends State<Tsholotsho> with SingleTickerProviderStateMixin{

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
                              
                              Text("Office Contact:        (+263)87 2 218"),
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
                              Text("Mobile Contact:    	(+263)773 639 114"),
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
                              Text("Physical Address:           Tsholotsolo Business Centre"),
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

class Turkmine extends StatefulWidget {
  const Turkmine({super.key});

  @override
  State<Turkmine> createState() => _TurkmineState();
}

class _TurkmineState extends State<Turkmine> with SingleTickerProviderStateMixin{

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
                              
                              Text("Office Contact:        (+263)285-225"),
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
                              Text("Mobile Contact:    	"),
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
                              Text("Physical Address:       "),
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

class VictoriaFalls extends StatefulWidget {
  const VictoriaFalls({super.key});

  @override
  State<VictoriaFalls> createState() => _VictoriaFallsState();
}

class _VictoriaFallsState extends State<VictoriaFalls> with SingleTickerProviderStateMixin{

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
                              
                              Text("Office Contact:       	(+263)13-44560"),
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
                              Text("Mobile Contact:    	  (+263)773 639054"),
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
                              Text("Physical Address:        L250 Livingston Avenue "),
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

class WestNich extends StatefulWidget {
  const WestNich({super.key});

  @override
  State<WestNich> createState() => _WestNichState();
}

class _WestNichState extends State<WestNich> with SingleTickerProviderStateMixin{

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
                              
                              Text("Office Contact :       	(+263)16-316"),
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
                              Text("Mobile Contact:    	"),
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
