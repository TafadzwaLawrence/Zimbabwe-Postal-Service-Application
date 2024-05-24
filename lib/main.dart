// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emsparcels/regions/midlands.dart';
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
import 'parcelstages/parcels.dart';
import 'documents/documents.dart';
import 'firebase_options.dart';
import 'firebase_options.dart';
import 'regions/harare.dart';
import 'regions/manicaland.dart';
import 'regions/mashonaland.dart';
import 'regions/regions.dart';
import 'zones/zones.dart';

void main() async {
  // FlutterDynamicIcon.changeIcon(iconPath: "icons/another_icon.png");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(
  ));
}

// back option
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

// no back option
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmsParcels',
      debugShowCheckedModeBanner: false, // remove the debug which is no app bar
      home: SplashScreen(),
      theme: ThemeData(
        unselectedWidgetColor: Color(0xFf312783),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFf312783)
        ),
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFf312783)),
      ),
      
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}


// splash screen at the begining of the application
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      // After 3 seconds, navigate to the main screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Replace HomeScreen with your desired screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/logo-0.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

//  end of splash screen

// beginning of home screen
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
                child: Text("Ems Parcels"))
            ],
          ),
        ),
      ),
    
       
      
      body: PageView(
        
        // ignore: sort_child_properties_last
        children: [
          // first page
          ListView(
            children: [
              const SizedBox(
                    height: 10,
                  ),
                  // divider
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
              Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "Welcome to Ems Parcels ",
                    
                  ),
                ),
              ),
              // divider
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
              // 4 different faces
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  // weight
                  GestureDetector(
                    onTap: (){
                      nextScreen(context, WeightDomesticInternational());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: EdgeInsets.all(16),
                    child: const Column(
                      children: [
                        Text("⚖️",style: TextStyle(
                            fontSize: 60
                          )),
                          Text("Weight")
                      ],
                    )
                                  ),
                  ),
                    // end of weight
                  const SizedBox(
                    height: 30,
                  ),
                  // fees
                  GestureDetector(
                    onTap: (){
                      // nextScreen(context, Fees());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      children: [
                        Text("💸",style: TextStyle(
                            fontSize: 60
                          )),
                          Text("Fees")
                      ],
                    )
                                  ),
                  ),
                  // end of fess
                  const SizedBox(
                    height: 30,
                  ),
                  // estimated package price
                  GestureDetector(
                    onTap: (){
                      // nextScreen(context, Fees());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      children: [
                        Text("📤",style: TextStyle(
                            fontSize: 60
                          )),
                          Text("Rate Parcel")
                      ],
                    )
                                  ),
                  ),
                  // end of estimated package price                                                     
                ],
              ),
              const SizedBox(
                height: 10,
                width: 60,
              ),
             Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 const SizedBox(
                    height: 30,
                  ),
                  // send a parcel
                  GestureDetector(
                    onTap: (){
                      nextScreen(context, Documents());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: const EdgeInsets.all(16),
                    child:const Column(
                      children: [
                        Text(
                        "✉️",
                        style: TextStyle(
                          fontSize: 60
                          )
                        ),
                        Text(
                          "Document"
                          )
                      ]
                    )
                      
                                  ),
                  ),
                  // end of parcel
                  const SizedBox(
                    height: 30,
                  ),
                  // packages
                  GestureDetector(
                    onTap: (){
                      nextScreen(context, Parcels());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      children: [
                          Text("📦",style: TextStyle(
                            fontSize: 60
                          )),
                          Text("Parcel")
                        ],
                    )
                                  ),
                  ),
                    // end of packages
                    const SizedBox(
                    height: 30,
                  ),
                  // estimated document price
                  GestureDetector(
                    onTap: (){
                      nextScreen(context, Parcels());
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ),
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      children: [
                          Text("📮",style: TextStyle(
                            fontSize: 60
                          )),
                          Text("Rate Document")
                        ],
                    )
                                  ),
                  ),
                    // end of estimated document price
              ],
             ),
             
                ],
              ),
              const SizedBox(
                height: 20,
              ),
          // divider
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
                // end of divider
                Center(
                  child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "Visit Nearest Zimpost office near you for final step",
                    
                  ),
                              ),
                ),
              // divider
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
                // end of divider
                const SizedBox(
                    height: 10,
                  ),
                
                 Center(
                   child: InkWell(
                      
                      onTap: () {
                        nextScreen(context, MatabelelandNorth());
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: ListTile(
                          
                          // leading: Icon(Icons.location_city),
                          title: Center(child: Text('Matabeleland')),
                        ),
                      ),
                    ),
                 ),
                  
                  
                   InkWell(
                    onTap: () {
                       nextScreen(context, Mashonaland());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        // leading: Icon(Icons.location_city),
                        title: Center(child: Text('Mashonaland')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   
                   InkWell(
                    onTap: () {
                      nextScreen(context, Harare());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:  ListTile(
                        // leading: Icon(Icons.location_city),
                        title: Center(child: Text('Harare')),
                      ),
                    ),
                  ),

                  // Add more list items as needed
                    const SizedBox(
                    height: 10,
                  ),
                   
                   InkWell(
                    onTap: () {
                      nextScreen(context, Midlands());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:  ListTile(
                        // leading: Icon(Icons.location_city),
                        title: Center(child: Text('Midlands')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   InkWell(
                    onTap: () {
                      nextScreen(context, Manicaland());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:  ListTile(
                        // leading: Icon(Icons.location_city),
                        title: Center(child: Text('Manicaland')),
                      ),
                    ),
                  ),
            ],
            
    
    
        ),
        // second page
        Center(
          child: ListView(
            padding: EdgeInsets.all(15.0),
            children: <Widget>[
              // Zone 1
                GestureDetector(
                  onTap:(){
                    nextScreen(context, Zones());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[900],
                    child: Center(child: Text('Zone 1')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Zone 2
                GestureDetector(
                  onTap:(){
                    nextScreen(context, Zones2());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[800],
                    child: Center(child: Text('Zone 2')),
                  ),
                ),
                // end of Zone 2
                const SizedBox(
                  height: 10,
                ),
                // Zone 3
                GestureDetector(
                  onTap:(){
                    nextScreen(context, Zones3());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[700],
                    child: Center(child: Text('Zone 3')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // end of Zone 3
                // Zone 4
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Zones4());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Zone 4')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Zones5());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[400],
                    child: Center(child: Text('Zone 5')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, Zones6());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[300],
                    child: Center(child: Text('Zone 6')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, Zones7());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[200],
                    child: Center(child: Text('Zone 7')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Zones8());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Zone 8')),
                  ),
                ),
            ],
            )),
            // third page
        Column(
          children: [
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
            Text("Premium Account"),
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
            ]
          )
        ],
    
    
         controller: _pageController,
      onPageChanged: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      ),
    
      
    
    bottomNavigationBar: BottomNavigationBar(
      unselectedLabelStyle: TextStyle(color: Color(0xFf312783)),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xFf312783),
            ),
          label: "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Color(0xFf312783),
            ),
          label: "Zones"
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color(0xFf312783),
            ),
          label: "Premium"
          )
      ],
      currentIndex: 0,
      onTap: (int index){
            setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        });
      },
      ),
    );
  }
}


// Documents start
class Documents extends StatefulWidget {
  const Documents({super.key});

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> 
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
                child: Text("Documents"))
            ],
          ),
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: Text(
                        "How to send Documents",
                      ),
                    ),
                    // divider
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
                      Expanded(
                        child: Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
                GestureDetector(
                  onTap: () {
                    nextScreen(context, DocumentsStep1());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Step 1')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, DocumentsStep2());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Step 2')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, DocumentsStep3());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Step 3')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, DocumentsStep4());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Step 4')),
                  ),
                ),
              ],
            )
            ), )
            ],
          )
        ],
      ),
    );
  }
}

class Parcels extends StatefulWidget {
  const Parcels({super.key});

  @override
  State<Parcels> createState() => _ParcelsState();
}
 
class _ParcelsState extends State<Parcels>
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
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: Text(
                        "How to send parcels",
                      ),
                    ),
                    // divider
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
                      Expanded(
                        child: Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
                GestureDetector(
                  onTap: () {
                    nextScreen(context, Parcel1());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Step 1')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Parcel2());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Step 2')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Parcel3());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Step 3')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    nextScreen(context, Parcel4());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Step 4')),
                  ),
                ),
                
              ],
            )
            ), )
            ],
          )
              
        ],
      ),
    );
  }
}


class Weigh extends StatefulWidget {
  const Weigh({super.key});

  @override
  State<Weigh> createState() => _WeighState();
}

class _WeighState extends State<Weigh> 
with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<double> _animation;

  
  final _pageController = PageController();
  int _currentIndex = 0;



  String query = '';
  final volumeController = TextEditingController();
  final densityController = TextEditingController();
  final costController = TextEditingController();

  double weight = 0;
  double cost = 0;

  void calculateWeight() {
    setState(() {
      weight = double.parse(volumeController.text) *
          double.parse(densityController.text);
    });
  }

  void calculateCost() {
    setState(() {
      cost = 3 * double.parse(volumeController.text);
    });
  }

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
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    nextScreenReplace(context, HomeScreen());
                  },
                ),
              FadeTransition
              (
                opacity: _animation,
                child: Text("Weight"))
            ],
          ),
        ),


      ),
      
      body: PageView(
        
        // ignore: sort_child_properties_last
        children: [
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: Text(
                        "Calculate how much your package might cost ",
                        
                      ),
                    ),
                    // divider
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                controller: volumeController,
                                decoration: InputDecoration(
                                  labelText: 'Volume in kgs',
                                ),
                              ),
                             
                              SizedBox(height: 16),
                             
                              

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFf312783),
                                  onPrimary: Color(0xFf312783)
                                ),
                                onPressed: calculateCost,
                                child: Text(
                                  'Calculate cost',
                                  style: TextStyle(
                                          color: Colors.white,
                                          
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                              ),
                              
                              SizedBox(height: 16),
                              Text('Cost: $cost'),
                            ],
                          ),
                        ),
                      ),
            ],
          )
              
        ],
      
       controller: _pageController,
      onPageChanged: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      ),
      bottomNavigationBar: BottomNavigationBar(
      unselectedLabelStyle: TextStyle(color: Color(0xFf312783)),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xFf312783),
            ),
          label: "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Color(0xFf312783),
            ),
          label: "Zones"
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color(0xFf312783),
            ),
          label: "Premium"
          )
      ],
      currentIndex: 0,
      onTap: (int index){
            setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        });
      },
      ),
    );
    
  }
}

class Fees extends StatefulWidget {
  const Fees({super.key});

  @override
  State<Fees> createState() => _FeesState();
}

class _FeesState extends State<Fees> 
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              FadeTransition
              (
                opacity: _animation,
                child: Text("Fees"))
            ],
          ),
          
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: Text(
                        "Tarrifs so far",
                        
                      ),
                    ),
                    // divider
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
                      Expanded(
                        child: Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
                GestureDetector(
                  onTap: () {
                    nextScreen(context, LetterDomestic());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Letter Domestic')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, LetterInternational());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Letter International')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // nextScreen(context, DocumentsStep3());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Domestic Parcels')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('International Parcels')),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Small Packets Domestic')),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Small Packets International')),
                ),
                SizedBox(
                  height: 10,
                ),
                
              ],
            )
            ), )
            ],
          )
              
        ],
      ),
    );
  }
}

class LetterDomestic extends StatefulWidget {
  const LetterDomestic({super.key});

  @override
  State<LetterDomestic> createState() => _LetterDomesticState();
}

class _LetterDomesticState extends State<LetterDomestic> 
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
                child: Text("Domestic Letters"))
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
                Text('Tarrifs for Domestic Letters'),
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
                              
                              Text("Up to 20g        USD1.60"),
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
                              Text("Over 20g up to 100g    	USD2.30"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Over 100g up to 250g	  USD2.90"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Over 250g up to 500g	  USD3.40"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Over 500g up to 1kg	    USD4.30"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
                              Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
   


                          ],
                        ),
                      ),
                              Text("Over 1kg up to 2kg	    USD5.10"),
                              //  divider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            
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


class LetterInternational extends StatefulWidget {
  const LetterInternational({super.key});

  @override
  State<LetterInternational> createState() => _LetterInternationalState();
}

class _LetterInternationalState extends State<LetterInternational> 
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeTransition
              (
                opacity: _animation,
                child: Text("Letter International"))
            ],
          ),
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: const Text(
                        "Zones where your letter wants  to go",
                        
                      ),
                    ),
                    // divider
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
                      Expanded(
                        child: Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
                GestureDetector(
                  onTap: () {
                    nextScreen(context, LetterDomestic());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Zone 1')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, LetterInternational());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Zone 2')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // nextScreen(context, DocumentsStep3());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Zone 3')),
                  ),
                ),
               
                
                
              ],
            )
            ), )
            ],
          )
        ],
      ),
    );
  }
}

class MiscellaneousGoods extends StatefulWidget {
  const MiscellaneousGoods({super.key});

  @override
  State<MiscellaneousGoods> createState() => _MiscellaneousGoodsState();
}

class _MiscellaneousGoodsState extends State<MiscellaneousGoods> 



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
                child: Text("Miscellaneous Goods"))
            ],
          ),
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              // divider
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
                    FadeTransition(
                      opacity: _animation,
                      child: Text(
                        "How to send goods in special",
                      ),
                    ),
                    // divider
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
                      Expanded(
                        child: Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
                GestureDetector(
                  onTap: () {
                    nextScreen(context, DocumentsStep1());
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Zone A = Zone A/B Small')),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    nextScreen(context, DocumentsStep2());
                    },
                  child: Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Step 2')),
                  ),
                ),
                
              ],
            )
            ), )
            ],
          )
        ],
      ),
    );;
  }
}

