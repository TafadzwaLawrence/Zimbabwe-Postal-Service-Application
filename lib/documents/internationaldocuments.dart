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
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/parcelstages/parcels.dart';
import '/documents/documents.dart';
import '/firebase_options.dart';
import '/firebase_options.dart';
import '/regions/regions.dart';
import 'package:emsparcels/main.dart';



class InternationalDocuments    extends StatefulWidget {
  const InternationalDocuments({super.key});

  @override
  State<InternationalDocuments> createState() => _InternationalDocumentsState();
}

class _InternationalDocumentsState extends State<InternationalDocuments> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  final volumeController = TextEditingController();
  final weightController = TextEditingController();
  final costController = TextEditingController();
  final zoneController = TextEditingController();

  double weight = 0;
  double cost = 0;
  double costZoneb = 0;

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

 
  void calculateCostZONEB() {
    setState(() {
      String selectedOption = weightController.text;
      String selectedOption2 = zoneController.text;

      if (selectedOption == '0.5' && selectedOption2 == '1') {
          setState(() {
            cost = 20.00; // example calculation for 1
          });
      } else if (selectedOption == '1' && selectedOption2 == '1') {
          setState(() {
            cost  = 39.00; // example calculation for 3
          });
      } else if (selectedOption == '1.5' && selectedOption2 == '1') {
          setState(() {
            cost   = 49.00; // example calculation for 3
          });
      } else if (selectedOption == '2' && selectedOption2 == '1') {
          setState(() {
           cost= 58.00; // example calculation for 3
          });
      } else if (selectedOption == '2.5' && selectedOption2 == '1') {
          setState(() {
            cost = 68.00; // example calculation for 3
          });
      }else if (selectedOption == '3.0' && selectedOption2 == '1') {
          setState(() {
            cost = 74.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '1') {
          setState(() {
           cost = 81.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '1') {
          setState(() {
           cost = 88.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '1') {
          setState(() {
           cost = 94.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '1') {
          setState(() {
           cost = 101.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '2') {
          setState(() {
           cost = 25.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '2') {
          setState(() {
           cost = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '2') {
          setState(() {
            cost= 53.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '2') {
          setState(() {
           cost = 63.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '2') {
          setState(() {
           cost = 74.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '2') {
          setState(() {
           cost = 84.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '2') {
          setState(() {
          cost = 93.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '2') {
          setState(() {
            cost = 103.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '2') {
          setState(() {
           cost = 112.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '2') {
          setState(() {
           cost = 122.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '3') {
          setState(() {
           cost = 27.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '3') {
          setState(() {
            cost = 45.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '3') {
          setState(() {
           cost = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '3') {
          setState(() {
           cost = 73.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '3') {
          setState(() {
            cost = 86.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '3') {
          setState(() {
            cost = 97.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '3') {
          setState(() {
            cost = 108.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '3') {
          setState(() {
            cost = 119.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '3') {
          setState(() {
            cost = 129.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '3') {
          setState(() {
           cost = 140.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '4') {
          setState(() {
           cost = 35.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '4') {
          setState(() {
           cost = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '4') {
          setState(() {
          cost = 79.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '4') {
          setState(() {
            cost = 99.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '4') {
          setState(() {
          cost = 118.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '4') {
          setState(() {
           cost = 132.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '4') {
          setState(() {
           cost = 146.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '4') {
          setState(() {
           cost = 161.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '4') {
          setState(() {
            cost = 175.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '4') {
          setState(() {
            cost = 190.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '5') {
          setState(() {
            cost = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '5') {
          setState(() {
            cost = 65.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '5') {
          setState(() {
            cost = 87.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '5') {
          setState(() {
            cost = 110.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '5') {
          setState(() {
            cost = 132.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '5') {
          setState(() {
            cost = 149.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '5') {
          setState(() {
            cost = 167.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '5') {
          setState(() {
            cost = 184.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '5') {
          setState(() {
            cost = 201.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '5') {
          setState(() {
           cost = 219.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '6') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '6') {
          setState(() {
            cost = 70.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '6') {
          setState(() {
           cost = 97.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '6') {
          setState(() {
           cost = 122.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '6') {
          setState(() {
           cost = 148.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '6') {
          setState(() {
           cost = 167.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '6') {
          setState(() {
            cost = 186.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '6') {
          setState(() {
            cost = 205.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '6') {
          setState(() {
            cost = 224.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '6') {
          setState(() {
            cost = 244.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '7') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '7') {
          setState(() {
            cost = 80.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '7') {
          setState(() {
            cost = 109.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '7') {
          setState(() {
            cost = 138.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '7') {
          setState(() {
            cost = 166.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '7') {
          setState(() {
            cost = 187.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '7') {
          setState(() {
            cost = 208.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '7') {
          setState(() {
            cost = 228.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '7') {
          setState(() {
            cost = 249.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '7') {
          setState(() {
            cost = 270.00; // example calculation for 3
          });
      }else if (selectedOption == '0.5' && selectedOption2 == '8') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '1' && selectedOption2 == '8') {
          setState(() {
            cost = 90.00; // example calculation for 3
          });
      }else if (selectedOption == '1.5' && selectedOption2 == '8') {
          setState(() {
            cost = 121.00; // example calculation for 3
          });
      }else if (selectedOption == '2' && selectedOption2 == '8') {
          setState(() {
            cost = 153.00; // example calculation for 3
          });
      }else if (selectedOption == '2.5' && selectedOption2 == '8') {
          setState(() {
            cost = 184.00; // example calculation for 3
          });
      }else if (selectedOption == '3' && selectedOption2 == '8') {
          setState(() {
            cost = 208.00; // example calculation for 3
          });
      }else if (selectedOption == '3.5' && selectedOption2 == '8') {
          setState(() {
            cost = 232.00; // example calculation for 3
          });
      }else if (selectedOption == '4' && selectedOption2 == '8') {
          setState(() {
            cost = 256.00; // example calculation for 3
          });
      }else if (selectedOption == '4.5' && selectedOption2 == '8') {
          setState(() {
            cost = 279.00; // example calculation for 3
          });
      }else if (selectedOption == '5' && selectedOption2 == '8') {
          setState(() {
            cost = 303.00; // example calculation for 3
          });
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeTransition
              (
                opacity: _animation,
                child: const Text("Ems Parcels"))
            ],
          ),
        ),
      ),
      body: ListView(
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
                        child: Center(
                          child: const Text(
                            "• International Documents",
                            style: TextStyle(
                              fontSize: 15
                            ),),
                        ),
                        
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        
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
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                  height: 20,
                ),
                
               
                // weight
                GestureDetector(
                  onTap: (){
                    // nextScreen(context, ZonesA());
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                    ),
                  padding: EdgeInsets.all(16),
                  child: const Column(
                    children: [
                      Text("🅰️",style: TextStyle(
                          fontSize: 60
                        )),
                        Text("Zone A")
                    ],
                  )
                                ),
                ),
                SizedBox(
                  width: 30,
                ),
                // fees
                GestureDetector(
                  onTap: (){
                    // nextScreenReplace(context, ZonesB());
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                    ),
                  padding: const EdgeInsets.all(16),
                  child: const Column(
                    children: [
                      Text("🅱️",style: TextStyle(
                          fontSize: 60
                        )),
                        Text("Zone B")
                    ],
                  )
                                ),
                ),
               
                  ],
                ),
          ),

             
          const Center(
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    // weight
                    
                    SizedBox(
                      height: 30,
                    ),
                    
          
                    
                  ],
                ),
               
                  ],
                ),
          ),
        
               
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        
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
                          "•	EMS DOMESTIC/FASTPARCEL SERVICE RATES",
                          style: TextStyle(
                            fontSize: 15
                          ),),
                        
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        
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
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              SizedBox(height: 16),

                             Center(
                               child: TextFormField(
                               
                                  controller: weightController,
                                  decoration: const InputDecoration(
                                    labelText: 'Enter kgs',
                                  ),
                                ),
                             ),
                               Center(
                               child: TextFormField(
                               
                                  controller: zoneController,
                                  decoration: const InputDecoration(
                                    labelText: 'Zone',
                                  ),
                                ),
                             ),
                              SizedBox(height: 16),

                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFf312783),
                                    onPrimary: Color(0xFf312783)
                                  ),
                                  onPressed: calculateCostZONEB,
                                  child: const Center(
                                    child:  Text(
                                      'Calculate cost Zone A',
                                      style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(height: 16),
                              Center(child: Text('Cost (USD): $cost')),
                               SizedBox(height: 16),
                             
                            ],
                          ),
                        ),
                      ),
                    // divider
                    
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
        ],
        
      ),
    );
  }
}
