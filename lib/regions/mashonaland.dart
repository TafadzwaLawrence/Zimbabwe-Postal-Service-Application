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


class Mashonaland extends StatefulWidget {
  const Mashonaland({super.key});

  @override
  State<Mashonaland> createState() => _MashonalandState();
}

class _MashonalandState extends State<Mashonaland> 
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
                  "Mashonaland",
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
                  nextScreen(context, Banket());
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: Center(child: Text('Banket')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Buhera());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: Center(child: Text('Buhera')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Bindura());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Bindura')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Centenary());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Centenary')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chakari());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chakari')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Chibuwe());
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
                  nextScreen(context, Chegutu());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chegutu')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              


              GestureDetector(
                onTap: () {
                  nextScreen(context, Chibuwe());
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
                  nextScreen(context, Chinhoyi());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chinhoyi')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              

              GestureDetector(
                onTap: () {
                  nextScreen(context, Chirundu());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Chirundu')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  nextScreen(context, Concession());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Concession')),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: () {
                  nextScreen(context, Darwendale());
                  },
                child: Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Darwendale')),
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
                child: Center(child: Text('Gawa')),
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
                child: Center(child: Text('Kadoma')),
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

class Buhera extends StatefulWidget {
  const Buhera({super.key});

  @override
  State<Buhera> createState() => _BuheraState();
}

class _BuheraState extends State<Buhera> with SingleTickerProviderStateMixin{

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
                Text('Buhera Branch information'),
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

class Bindura extends StatefulWidget {
  const Bindura({super.key});

  @override
  State<Bindura> createState() => _BinduraState();
}

class _BinduraState extends State<Bindura> with SingleTickerProviderStateMixin{

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
                Text('Bindura Branch information'),
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

class Centenary extends StatefulWidget {
  const Centenary({super.key});

  @override
  State<Centenary> createState() => _CentenaryState();
}

class _CentenaryState extends State<Centenary> with SingleTickerProviderStateMixin{

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
                Text('Centenary Branch information'),
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

class Chakari extends StatefulWidget {
  const Chakari({super.key});

  @override
  State<Chakari> createState() => _ChakariState();
}

class _ChakariState extends State<Chakari> with SingleTickerProviderStateMixin{

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

class Chegutu extends StatefulWidget {
  const Chegutu({super.key});

  @override
  State<Chegutu> createState() => _ChegutuState();
}

class _ChegutuState extends State<Chegutu> with SingleTickerProviderStateMixin{

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
                Text('Chegutu Branch information'),
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

class Chibuwe extends StatefulWidget {
  const Chibuwe({super.key});

  @override
  State<Chibuwe> createState() => _ChibuweState();
}

class _ChibuweState extends State<Chibuwe> with SingleTickerProviderStateMixin{

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
                Text('Chibuwe Branch information'),
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

class Banket extends StatefulWidget {
  const Banket({super.key});

  @override
  State<Banket> createState() => _BanketState();
}

class _BanketState extends State<Banket> with SingleTickerProviderStateMixin{

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
                Text('Banket Branch information'),
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

class Chinhoyi  extends StatefulWidget {
  const Chinhoyi({super.key});

  @override
  State<Chinhoyi> createState() => _ChinhoyiState();
}

class _ChinhoyiState extends State<Chinhoyi> with SingleTickerProviderStateMixin{

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

class Chirundu extends StatefulWidget {
  const Chirundu({super.key});

  @override
  State<Chirundu> createState() => _ChirunduState();
}

class _ChirunduState extends State<Chirundu> with SingleTickerProviderStateMixin{

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

class Concession extends StatefulWidget {
  const Concession({super.key});

  @override
  State<Concession> createState() => _ConcessionState();
}

class _ConcessionState extends State<Concession> with SingleTickerProviderStateMixin{

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

class Darwendale extends StatefulWidget {
  const Darwendale({super.key});

  @override
  State<Darwendale> createState() => _DarwendaleState();
}

class _DarwendaleState extends State<Darwendale> with SingleTickerProviderStateMixin{

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

class Dorowa extends StatefulWidget {
  const Dorowa({super.key});

  @override
  State<Dorowa> createState() => _DorowaState();
}

class _DorowaState extends State<Dorowa> with SingleTickerProviderStateMixin{

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

class Gawa extends StatefulWidget {
  const Gawa({super.key});

  @override
  State<Gawa> createState() => _GawaState();
}

class _GawaState extends State<Gawa> with SingleTickerProviderStateMixin{

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

class Glendale extends StatefulWidget {
  const Glendale({super.key});

  @override
  State<Glendale> createState() => _GlendaleState();
}

class _GlendaleState extends State<Glendale> with SingleTickerProviderStateMixin{

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

class Kariba extends StatefulWidget {
  const Kariba({super.key});

  @override
  State<Kariba> createState() => _KaribaState();
}

class _KaribaState extends State<Kariba> with SingleTickerProviderStateMixin{

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

class Karoi extends StatefulWidget {
  const Karoi({super.key});

  @override
  State<Karoi> createState() => _KaroiState();
}

class _KaroiState extends State<Karoi> with SingleTickerProviderStateMixin{

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

class Macheke extends StatefulWidget {
  const Macheke({super.key});

  @override
  State<Macheke> createState() => _MachekeState();
}

class _MachekeState extends State<Macheke> with SingleTickerProviderStateMixin{

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

class Magunje extends StatefulWidget {
  const Magunje({super.key});

  @override
  State<Magunje> createState() => _MagunjeState();
}

class _MagunjeState extends State<Magunje> with SingleTickerProviderStateMixin{

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

class Marondera extends StatefulWidget {
  const Marondera({super.key});

  @override
  State<Marondera> createState() => _MaronderaState();
}

class _MaronderaState extends State<Marondera> with SingleTickerProviderStateMixin{

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

class Mazowe extends StatefulWidget {
  const Mazowe({super.key});

  @override
  State<Mazowe> createState() => _MazoweState();
}

class _MazoweState extends State<Mazowe> with SingleTickerProviderStateMixin{

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

class Mhangura extends StatefulWidget {
  const Mhangura({super.key});

  @override
  State<Mhangura> createState() => _MhanguraState();
}

class _MhanguraState extends State<Mhangura> with SingleTickerProviderStateMixin{

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

class MtDarwin extends StatefulWidget {
  const MtDarwin({super.key});

  @override
  State<MtDarwin> createState() => _MtDarwinState();
}

class _MtDarwinState extends State<MtDarwin> with SingleTickerProviderStateMixin{

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

class Mudzi extends StatefulWidget {
  const Mudzi({super.key});

  @override
  State<Mudzi> createState() => _MudziState();
}

class _MudziState extends State<Mudzi> with SingleTickerProviderStateMixin{

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

class Murehwa extends StatefulWidget {
  const Murehwa({super.key});

  @override
  State<Murehwa> createState() => _MurehwaState();
}

class _MurehwaState extends State<Murehwa> with SingleTickerProviderStateMixin{

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

class Murombedzi extends StatefulWidget {
  const Murombedzi({super.key});

  @override
  State<Murombedzi> createState() => _MurombedziState();
}

class _MurombedziState extends State<Murombedzi> with SingleTickerProviderStateMixin{

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

class Musengezi extends StatefulWidget {
  const Musengezi({super.key});

  @override
  State<Musengezi> createState() => _MusengeziState();
}

class _MusengeziState extends State<Musengezi> with SingleTickerProviderStateMixin{

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

class Mutoko extends StatefulWidget {
  const Mutoko({super.key});

  @override
  State<Mutoko> createState() => _MutokoState();
}

class _MutokoState extends State<Mutoko> with SingleTickerProviderStateMixin{

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

class Mutawatawa extends StatefulWidget {
  const Mutawatawa({super.key});

  @override
  State<Mutawatawa> createState() => _MutawatawaState();
}

class _MutawatawaState extends State<Mutawatawa> with SingleTickerProviderStateMixin{

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

class Mutorashanga extends StatefulWidget {
  const Mutorashanga({super.key});

  @override
  State<Mutorashanga> createState() => _MutorashangaState();
}

class _MutorashangaState extends State<Mutorashanga> with SingleTickerProviderStateMixin{

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

class Muzarabani extends StatefulWidget {
  const Muzarabani({super.key});

  @override
  State<Muzarabani> createState() => _MuzarabaniState();
}

class _MuzarabaniState extends State<Muzarabani> with SingleTickerProviderStateMixin{

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


