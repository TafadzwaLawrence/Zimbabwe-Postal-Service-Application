// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emsparcels/documents/internationaldocuments.dart';
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
import '/parcelstages/parcels.dart';
import '/documents/documents.dart';
import '/firebase_options.dart';
import '/firebase_options.dart';
import '/regions/regions.dart';
import 'package:emsparcels/main.dart';



class Zones extends StatefulWidget {
  const Zones({super.key});

  @override
  State<Zones> createState() => _ZonesState();
}

class _ZonesState extends State<Zones>with SingleTickerProviderStateMixin {

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
                child: Text("Zone 1"))
            ],
          ),
        ),
      ),
      body: PageView(
        children: [
          Center(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
           Container(
             height: 50,
             color: Colors.amber[900],
             child: Center(child: Text('S.A.  JORBUG AND PRETORIA')),
           ),
           
            ],
            ))
        ],
      ),
    );
  }
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




class Zones2 extends StatefulWidget {
  const Zones2({super.key});

  @override
  State<Zones2> createState() => _Zones2State();
}

class _Zones2State extends State<Zones2>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 2"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('SWAZILAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('S.A. (REST OF )')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('MOZAMBIQUE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('MALAWI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('LESOTHO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('BOTSWANA')),
       ),
        ],
        ),
    );
  }
}


class Zones3 extends StatefulWidget {
  const Zones3({super.key});

  @override
  State<Zones3> createState() => _Zones3State();
}

class _Zones3State extends State<Zones3>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 3"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('BURUNDI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('COMOROS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('KENYA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('MADAGASCAR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('MAURITIUS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('MAYOTTE')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('NAMIBIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('SEYCHELLES')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('TANZANIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('UGANDA')),
       ),
       
        ],
        ),
    );
  }
}



class Zones4 extends StatefulWidget {
  const Zones4({super.key});

  @override
  State<Zones4> createState() => _Zones4State();
}

class _Zones4State extends State<Zones4>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 4"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('UK')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('SPAIN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('NETHERLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('MONACO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('LUXEMBURG')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('JERSEY')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('ITALY')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('ISRAEL')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('IRELAND REP OF')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUERNSEY')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('GERMANY')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('FRANCE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('BELGIUM')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ANGOLA')),
       ),
        ],
        ),
    );
  }
}

class Zones5 extends StatefulWidget {
  const Zones5({super.key});

  @override
  State<Zones5> createState() => _Zones5State();
}

class _Zones5State extends State<Zones5>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 3"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('ANDORRA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('AUSTRIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('CANADA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('DENMARK')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('DJIBOUTI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('ERITREA')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('ETHIOPIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('FINLAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('GIBBRALTAR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GREECE')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('LIECHTENSTEIN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('NORWAY')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('POLAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SOMALIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SAMALILAND REP OF')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SWEDEN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SWITZERLAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('USA')),
       ),
        ],
        ),
    );
  }
}


class Zones6 extends StatefulWidget {
  const Zones6({super.key});

  @override
  State<Zones6> createState() => _Zones6State();
}

class _Zones6State extends State<Zones6>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 6"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('AFGHANISATAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('ALGERIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('AGENTINA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('AUSTRALIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('BENIN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('BRAZIL')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('BURKINA FASO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('CAMEROON')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('CANARY ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CAPE VERDE')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('CENTRAL AFRICAN REP')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('CHAD')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('CONGO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CONGO(DEM REPUBLIC)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('COTE D IVOIRE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CYPRUS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('EGYPT')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('EUQTORIA GUINEA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GABON')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GAMBIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GHANA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUINEA BISSAU')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUINEA REPUBLIC')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('HONG KONG')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('INDIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('IRAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('IRAQ')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('JAPAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KOREA REP. OF')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KUWAIT')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LEBANON')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LIBERIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LIBYA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MALAYSIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MALI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MALTA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MAURITANIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MEXICO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MOROCCO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NIGER')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NIGERIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('OMAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PAKISTAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PERU')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('RWANDA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SAMOA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SAO TOME AND PRINCIPE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SAUDI ARABIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SENEGAL')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SIERRA LEONE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SINGAPORE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SUDAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SYRIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TAIWAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('THAILAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TOGO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TUNISIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('UNITED ARAB EMIRATES')),
       ),
        ],
        ),
    );
  }
}



class Zones7 extends StatefulWidget {
  const Zones7({super.key});

  @override
  State<Zones7> createState() => _Zones7State();
}

class _Zones7State extends State<Zones7>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 7"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('ALBANIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('ARMENIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('AZERBAIJAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('BAHRAIN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('BELARUS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('BOSNIA HERZEGOVINA')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('BUGARIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('CHINA (PEOPLE REP)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('CROATIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CZECH REPUBLIC')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('ESTONIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('GEORGIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('HUNGARY')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('JORDAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KAZARHSTAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KYRGYSTAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LATIVIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LUTHUANIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MACEDONIA (REP)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MODOVA REP OF')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PORTUGAL')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SEBIA AND MONTENEGRO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SLOVAKIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SLOVENIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TAJISTAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TURKEY')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TURMENISTAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('UKRAINE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('UZBEKISTAN')),
       ),
       
       
        ],
        ),
    );
  }
}


class Zones8 extends StatefulWidget {
  const Zones8({super.key});

  @override
  State<Zones8> createState() => _Zones8State();
}

class _Zones8State extends State<Zones8>with SingleTickerProviderStateMixin {
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
                child: Text("Zone 8"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('AMERICA SOMOA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('ANGUILLA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('ANTIGUA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('ARUBA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('BAHAMAS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[400],
         child: Center(child: Text('BANGLADESH')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('BARBADOS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('BELIZE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('BERMUDA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('BHUTAN')),
       ),
         const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[300],
         child: Center(child: Text('BOLIVIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[200],
         child: Center(child: Text('BONAIRE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[100],
         child: Center(child: Text('BRUNEI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CAMBODIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CAYMAN ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CHILE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('COLOMBIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('COOK ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('COSTA RICA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CUBA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('CURACAO')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('DOMINICA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('DOMINICAN REPUBLIC')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('EAST TIMOR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('EQUADOR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ELSAVADOR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('FALKLAND ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('FAROE ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('FIJI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('FREMCH GUIANA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GREENLAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GRENADA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUADELOUPE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUAM')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUATEMALA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('GUYANA (BRITISH)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('HAITI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('HONDURUS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ICELAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('INDONESIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('JAMAICA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KIRIBATI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('KOREA (DPRK OF)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('LAOS (PEOPLES DM REP)')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MACAU')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MALDIVES')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MARSHALL ISLANDS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MARTINQUE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MONGOLIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MONTERSRRAT')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('MYANMAR')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NAURU REP OF')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NEPAL')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NEVIS')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NEW CALEDONIA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NEW ZEALAND')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NICARAGUA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NIUE')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PANAMA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PAPUA NEW GUINEA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PARAGUAY')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PHILLIPPINES THE')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('PUETO RICO')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('QATAR')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('REUNION(ISLAND OF)')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ROMANIA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NIUE')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('RUSSIAN FEDERATION')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SAIPAN')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('NIUE')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SOLOMON ISLANDS')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SRI LANKA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST BARTHELEMY')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST EUSTATIUS')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST KITTS(ST CHRISTOPHER)')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST LUCIA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST MAARTEN')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('ST VINCENT')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('SURINAME')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TAHITI')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TANGA')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TRINIDAD AND TIBAGO')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TURKS AND CAICOS ISLAND')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('TUVALU')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('URAGUAY')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('VANUATA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('VENEZUELA')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('VEITNAM')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('VIRGIN ISLANDS (BRITISH)')),
       ),const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[90],
         child: Center(child: Text('VIRGIN ISLANS (US)')),
       ),
        ],
        ),
    );
  }
}




class WeightDomesticInternational extends StatefulWidget {
  const WeightDomesticInternational({super.key});

  @override
  State<WeightDomesticInternational> createState() => _WeightDomesticInternationalState();
}

class _WeightDomesticInternationalState extends State<WeightDomesticInternational> 
with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  final volumeController = TextEditingController();
  final densityController = TextEditingController();
  final costController = TextEditingController();

  double weight = 0;
  double cost = 0;

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

  void calculateCost() {
    setState(() {
      String selectedOption = densityController.text;

      if (selectedOption == '1') {
          setState(() {
            cost = 11 * double.parse(volumeController.text); // example calculation for 1
          });
      } else if (selectedOption == '3') {
          setState(() {
            cost = 14 * double.parse(volumeController.text); // example calculation for 3
          });
      }
    });
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
                    "Choose destination",
                    
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
                SizedBox(
                  height: 30,
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
                    nextScreen(context, DomesticWeight());
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                    ),
                  padding: EdgeInsets.all(16),
                  child: const Column(
                    children: [
                      Text("🛻",style: TextStyle(
                          fontSize: 60
                        )),
                        Text("Domestic")
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
                    nextScreenReplace(context, InternationalWeight());
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                    ),
                  padding: const EdgeInsets.all(16),
                  child: const Column(
                    children: [
                      Text("🛫",style: TextStyle(
                          fontSize: 60
                        )),
                        Text("International")
                    ],
                  )
                                ),
                ),
               
                  ],
                ),
          ),
          SizedBox(
                  height: 30,
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
                          "Calculation of EMS Pack Prices",
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
                              TextField(
                                controller: volumeController,
                                decoration: InputDecoration(
                                  labelText: 'Quantity',
                                ),
                              ),
                             
                              SizedBox(height: 16),

                             TextFormField(
                                      validator: (value) {
                                      if (value != '1' && value != '3') {
                                        return 'Please enter 1 or 3';
                                      }
                                      return null;
                                    },
            
                                controller: densityController,
                                decoration: const InputDecoration(
                                  labelText: 'Enter 1Kg or 3kgs',
                                ),
                              ),
                              
                              SizedBox(height: 16),
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFf312783),
                                    onPrimary: Color(0xFf312783)
                                  ),
                                  onPressed: calculateCost,
                                  child: Center(
                                    child: const Text(
                                      'Calculate cost',
                                      style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(height: 16),
                              Text('Cost (USD): $cost'),
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
       
        // second page  
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
                    "Over 100kgs",
                    
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

                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    
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
                child: Image.asset(
                  'images/logo-0.png',
                  width: 200,
                  height: 200,
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






                const SizedBox(
                    height: 30,
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
                    "                       Min charge               Rate Add Minimum",
                    
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
                Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "101-1000                 57                0.50 per additional kg",
                    
                  ),
                ),
              ),
              Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "101-1000                 57                0.50 per additional kg",
                    
                  ),
                ),
              ),
              Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "101-1000                 57                0.50 per additional kg",
                    
                  ),
                ),
              ),
              Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: const Text(
                    "101-1000                 57                0.50 per additional kg",
                    
                  ),
                ),
              ),
          ],
        ),
        Container()
        
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
          label: "Over 100kgs"
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color(0xFf312783),
            ),
          label: "Premium"
          )
      ],
      
      ),
    );
  }
}



class DomesticWeight extends StatefulWidget {
  const DomesticWeight({super.key});

  @override
  State<DomesticWeight> createState() => _DomesticWeightState();
}

class _DomesticWeightState extends State<DomesticWeight> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  final volumeController = TextEditingController();
  final densityController = TextEditingController();
  final costController = TextEditingController();

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

  void calculateCost() {
    setState(() {
      String selectedOption = densityController.text;

      if (selectedOption == '1') {
          setState(() {
            cost = 11.00; // example calculation for 1
          });
      } else if (selectedOption == '2') {
          setState(() {
            cost = 14.00; // example calculation for 3
          });
      } else if (selectedOption == '3') {
          setState(() {
            cost = 14.00; // example calculation for 3
          });
      } else if (selectedOption == '4') {
          setState(() {
            cost = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '5') {
          setState(() {
            cost = 15.00; // example calculation for 3
          });
      }else if (selectedOption == '6') {
          setState(() {
            cost = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '7') {
          setState(() {
            cost = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '8') {
          setState(() {
            cost = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '9') {
          setState(() {
            cost = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '10') {
          setState(() {
            cost = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '11') {
          setState(() {
            cost = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '12') {
          setState(() {
            cost = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '13') {
          setState(() {
            cost = 20.00; // example calculation for 3
          });
      }else if (selectedOption == '14') {
          setState(() {
            cost = 21.00; // example calculation for 3
          });
      }else if (selectedOption == '15') {
          setState(() {
            cost = 22.00; // example calculation for 3
          });
      }else if (selectedOption == '16') {
          setState(() {
            cost = 23.00; // example calculation for 3
          });
      }else if (selectedOption == '17') {
          setState(() {
            cost = 24.00; // example calculation for 3
          });
      }else if (selectedOption == '18') {
          setState(() {
            cost = 25.00; // example calculation for 3
          });
      }else if (selectedOption == '19') {
          setState(() {
            cost = 26.00; // example calculation for 3
          });
      }else if (selectedOption == '20') {
          setState(() {
            cost = 27.00; // example calculation for 3
          });
      }else if (selectedOption == '21') {
          setState(() {
            cost = 29.00; // example calculation for 3
          });
      }else if (selectedOption == '22') {
          setState(() {
            cost = 30.00; // example calculation for 3
          });
      }else if (selectedOption == '23') {
          setState(() {
            cost = 31.00; // example calculation for 3
          });
      }else if (selectedOption == '24') {
          setState(() {
            cost = 32.00; // example calculation for 3
          });
      }else if (selectedOption == '25') {
          setState(() {
            cost = 33.00; // example calculation for 3
          });
      }else if (selectedOption == '26') {
          setState(() {
            cost = 34.00; // example calculation for 3
          });
      }else if (selectedOption == '27') {
          setState(() {
            cost = 35.00; // example calculation for 3
          });
      }else if (selectedOption == '28') {
          setState(() {
            cost = 36.00; // example calculation for 3
          });
      }else if (selectedOption == '29') {
          setState(() {
            cost = 37.00; // example calculation for 3
          });
      }else if (selectedOption == '30') {
          setState(() {
            cost = 39.00; // example calculation for 3
          });
      }else if (selectedOption == '31') {
          setState(() {
            cost = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '32') {
          setState(() {
            cost = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '33') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '34') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '35') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '36') {
          setState(() {
            cost = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '37') {
          setState(() {
            cost = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '38') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '39') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '40') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '41') {
          setState(() {
            cost = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '42') {
          setState(() {
            cost = 45.00; // example calculation for 3
          });
      }else if (selectedOption == '43') {
          setState(() {
            cost = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '44') {
          setState(() {
            cost = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '45') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '46') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '47') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '48') {
          setState(() {
            cost = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '49') {
          setState(() {
            cost = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '50') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '51') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '52') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '53') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '54') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '55') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '56') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '57') {
          setState(() {
            cost = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '58') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '59') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '60') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '61') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '62') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '63') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '64') {
          setState(() {
            cost = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '65') {
          setState(() {
            cost = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '66') {
          setState(() {
            cost = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '67') {
          setState(() {
            cost = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '68') {
          setState(() {
            cost = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '69') {
          setState(() {
            cost = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '70') {
          setState(() {
            cost = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '71') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '72') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '73') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '74') {
          setState(() {
            cost = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '75') {
          setState(() {
            cost = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '76') {
          setState(() {
            cost = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '77') {
          setState(() {
            cost = 60.00; // example calculation for 3
          });
      }
      
    });
  }
  void calculateCostZONEB() {
    setState(() {
      String selectedOption = densityController.text;

      if (selectedOption == '1') {
          setState(() {
            costZoneb = 11.00; // example calculation for 1
          });
      } else if (selectedOption == '2') {
          setState(() {
            costZoneb  = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '3') {
          setState(() {
            costZoneb   = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '4') {
          setState(() {
           costZoneb= 16.00; // example calculation for 3
          });
      } else if (selectedOption == '5') {
          setState(() {
            costZoneb = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '6') {
          setState(() {
            costZoneb = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '7') {
          setState(() {
           costZoneb = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '8') {
          setState(() {
           costZoneb = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '9') {
          setState(() {
           costZoneb = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '10') {
          setState(() {
           costZoneb = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '11') {
          setState(() {
           costZoneb = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '12') {
          setState(() {
           costZoneb = 20.00; // example calculation for 3
          });
      }else if (selectedOption == '13') {
          setState(() {
            costZoneb= 21.00; // example calculation for 3
          });
      }else if (selectedOption == '14') {
          setState(() {
           costZoneb = 22.00; // example calculation for 3
          });
      }else if (selectedOption == '15') {
          setState(() {
           costZoneb = 23.00; // example calculation for 3
          });
      }else if (selectedOption == '16') {
          setState(() {
           costZoneb = 24.00; // example calculation for 3
          });
      }else if (selectedOption == '17') {
          setState(() {
          costZoneb = 25.00; // example calculation for 3
          });
      }else if (selectedOption == '18') {
          setState(() {
            costZoneb = 26.00; // example calculation for 3
          });
      }else if (selectedOption == '19') {
          setState(() {
           costZoneb = 27.00; // example calculation for 3
          });
      }else if (selectedOption == '20') {
          setState(() {
           costZoneb = 28.00; // example calculation for 3
          });
      }else if (selectedOption == '21') {
          setState(() {
           costZoneb = 30.00; // example calculation for 3
          });
      }else if (selectedOption == '22') {
          setState(() {
            costZoneb = 31.00; // example calculation for 3
          });
      }else if (selectedOption == '23') {
          setState(() {
           costZoneb = 32.00; // example calculation for 3
          });
      }else if (selectedOption == '24') {
          setState(() {
           costZoneb = 33.00; // example calculation for 3
          });
      }else if (selectedOption == '25') {
          setState(() {
            costZoneb = 34.00; // example calculation for 3
          });
      }else if (selectedOption == '26') {
          setState(() {
            costZoneb = 35.00; // example calculation for 3
          });
      }else if (selectedOption == '27') {
          setState(() {
            costZoneb = 36.00; // example calculation for 3
          });
      }else if (selectedOption == '28') {
          setState(() {
            costZoneb = 37.00; // example calculation for 3
          });
      }else if (selectedOption == '29') {
          setState(() {
            costZoneb = 38.00; // example calculation for 3
          });
      }else if (selectedOption == '30') {
          setState(() {
           costZoneb = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '31') {
          setState(() {
           costZoneb = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '32') {
          setState(() {
           costZoneb = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '33') {
          setState(() {
          costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '34') {
          setState(() {
            costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '35') {
          setState(() {
          costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '36') {
          setState(() {
           costZoneb = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '37') {
          setState(() {
           costZoneb = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '38') {
          setState(() {
           costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '39') {
          setState(() {
            costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '40') {
          setState(() {
            costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '41') {
          setState(() {
            costZoneb = 45.00; // example calculation for 3
          });
      }else if (selectedOption == '42') {
          setState(() {
            costZoneb = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '43') {
          setState(() {
            costZoneb = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '44') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '45') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '46') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '47') {
          setState(() {
            costZoneb = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '48') {
          setState(() {
            costZoneb = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '49') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '50') {
          setState(() {
           costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '51') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '52') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '53') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '54') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '55') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '56') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '57') {
          setState(() {
            costZoneb = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '58') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '59') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '60') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '61') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '62') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '63') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '64') {
          setState(() {
            costZoneb = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '65') {
          setState(() {
            costZoneb = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '66') {
          setState(() {
            costZoneb = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '67') {
          setState(() {
            costZoneb = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '68') {
          setState(() {
            costZoneb = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '69') {
          setState(() {
            costZoneb = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '70') {
          setState(() {
            costZoneb = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '71') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '72') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '73') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '74') {
          setState(() {
            costZoneb = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '75') {
          setState(() {
            costZoneb = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '76') {
          setState(() {
            costZoneb = 61.00; // example calculation for 3
          });
      }else if (selectedOption == '77') {
          setState(() {
            costZoneb = 61.00; // example calculation for 3
          });
      }
      
    });
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
                child: Text("Ems Parcels"))
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
                            "• Zones covered",
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
                    nextScreen(context, ZonesA());
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
                    nextScreenReplace(context, ZonesB());
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
                               
                                  controller: densityController,
                                  decoration: const InputDecoration(
                                    labelText: 'Enter kgs',
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
                                  onPressed: calculateCost,
                                  child: Center(
                                    child: const Text(
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
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFf312783),
                                    onPrimary: Color(0xFf312783)
                                  ),
                                  onPressed: calculateCostZONEB,
                                  child: Center(
                                    child: const Text(
                                      'Calculate cost Zone B',
                                      style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(height: 16),
                              Center(child: Text('Cost (USD): $costZoneb')),
                              
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





class ZonesA extends StatefulWidget {
  const ZonesA({super.key});

  @override
  State<ZonesA> createState() => _ZonesAState();
}

class _ZonesAState extends State<ZonesA>with SingleTickerProviderStateMixin {
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
                child: Text("Zone A"))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
       Container(
         height: 50,
         color: Colors.amber[900],
         child: Center(child: Text('Harare')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[800],
         child: Center(child: Text('Buluwayo')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[700],
         child: Center(child: Text('Mutare')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[600],
         child: Center(child: Text('Masvingo')),
       ),
       const SizedBox(
         height: 10,
       ),
        Container(
         height: 50,
         color: Colors.amber[500],
         child: Center(child: Text('Gweru')),
       ),
       const SizedBox(
         height: 10,
       ),
       
        ],
        ),
    );
  }
}


class ZonesB extends StatefulWidget {
  const ZonesB({super.key});

  @override
  State<ZonesB> createState() => _ZonesBState();
}

class _ZonesBState extends State<ZonesB>with SingleTickerProviderStateMixin {
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
                child: Text("Zone A"))
            ],
          ),
        ),
      ),
      body: Center(
          child: ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        // Zone 1
          GestureDetector(
            onTap:(){
              // nextScreen(context, Zones());
            },
            child: Container(
              height: 50,
              color: Colors.amber[900],
              child: Center(child: Text('Rest of Zimbabwe')),
            ),
          ),
          
          // end of Zone 2
          
          
      ],
      )),
    );
  }
}





class InternationalWeight extends StatefulWidget {
  const InternationalWeight({super.key});

  @override
  State<InternationalWeight> createState() => _InternationalWeightState();
}

class _InternationalWeightState extends State<InternationalWeight> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  final volumeController = TextEditingController();
  final densityController = TextEditingController();
  final costController = TextEditingController();

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

  void calculateCost() {
    setState(() {
      String selectedOption = densityController.text;

      if (selectedOption == '1') {
          setState(() {
            cost = 11.00; // example calculation for 1
          });
      } else if (selectedOption == '2') {
          setState(() {
            cost = 14.00; // example calculation for 3
          });
      } else if (selectedOption == '3') {
          setState(() {
            cost = 14.00; // example calculation for 3
          });
      } else if (selectedOption == '4') {
          setState(() {
            cost = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '5') {
          setState(() {
            cost = 15.00; // example calculation for 3
          });
      }else if (selectedOption == '6') {
          setState(() {
            cost = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '7') {
          setState(() {
            cost = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '8') {
          setState(() {
            cost = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '9') {
          setState(() {
            cost = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '10') {
          setState(() {
            cost = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '11') {
          setState(() {
            cost = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '12') {
          setState(() {
            cost = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '13') {
          setState(() {
            cost = 20.00; // example calculation for 3
          });
      }else if (selectedOption == '14') {
          setState(() {
            cost = 21.00; // example calculation for 3
          });
      }else if (selectedOption == '15') {
          setState(() {
            cost = 22.00; // example calculation for 3
          });
      }else if (selectedOption == '16') {
          setState(() {
            cost = 23.00; // example calculation for 3
          });
      }else if (selectedOption == '17') {
          setState(() {
            cost = 24.00; // example calculation for 3
          });
      }else if (selectedOption == '18') {
          setState(() {
            cost = 25.00; // example calculation for 3
          });
      }else if (selectedOption == '19') {
          setState(() {
            cost = 26.00; // example calculation for 3
          });
      }else if (selectedOption == '20') {
          setState(() {
            cost = 27.00; // example calculation for 3
          });
      }else if (selectedOption == '21') {
          setState(() {
            cost = 29.00; // example calculation for 3
          });
      }else if (selectedOption == '22') {
          setState(() {
            cost = 30.00; // example calculation for 3
          });
      }else if (selectedOption == '23') {
          setState(() {
            cost = 31.00; // example calculation for 3
          });
      }else if (selectedOption == '24') {
          setState(() {
            cost = 32.00; // example calculation for 3
          });
      }else if (selectedOption == '25') {
          setState(() {
            cost = 33.00; // example calculation for 3
          });
      }else if (selectedOption == '26') {
          setState(() {
            cost = 34.00; // example calculation for 3
          });
      }else if (selectedOption == '27') {
          setState(() {
            cost = 35.00; // example calculation for 3
          });
      }else if (selectedOption == '28') {
          setState(() {
            cost = 36.00; // example calculation for 3
          });
      }else if (selectedOption == '29') {
          setState(() {
            cost = 37.00; // example calculation for 3
          });
      }else if (selectedOption == '30') {
          setState(() {
            cost = 39.00; // example calculation for 3
          });
      }else if (selectedOption == '31') {
          setState(() {
            cost = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '32') {
          setState(() {
            cost = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '33') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '34') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '35') {
          setState(() {
            cost = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '36') {
          setState(() {
            cost = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '37') {
          setState(() {
            cost = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '38') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '39') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '40') {
          setState(() {
            cost = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '41') {
          setState(() {
            cost = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '42') {
          setState(() {
            cost = 45.00; // example calculation for 3
          });
      }else if (selectedOption == '43') {
          setState(() {
            cost = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '44') {
          setState(() {
            cost = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '45') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '46') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '47') {
          setState(() {
            cost = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '48') {
          setState(() {
            cost = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '49') {
          setState(() {
            cost = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '50') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '51') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '52') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '53') {
          setState(() {
            cost = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '54') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '55') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '56') {
          setState(() {
            cost = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '57') {
          setState(() {
            cost = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '58') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '59') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '60') {
          setState(() {
            cost = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '61') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '62') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '63') {
          setState(() {
            cost = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '64') {
          setState(() {
            cost = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '65') {
          setState(() {
            cost = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '66') {
          setState(() {
            cost = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '67') {
          setState(() {
            cost = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '68') {
          setState(() {
            cost = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '69') {
          setState(() {
            cost = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '70') {
          setState(() {
            cost = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '71') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '72') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '73') {
          setState(() {
            cost = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '74') {
          setState(() {
            cost = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '75') {
          setState(() {
            cost = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '76') {
          setState(() {
            cost = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '77') {
          setState(() {
            cost = 60.00; // example calculation for 3
          });
      }
      
    });
  }
  void calculateCostZONEB() {
    setState(() {
      String selectedOption = densityController.text;

      if (selectedOption == '1') {
          setState(() {
            costZoneb = 11.00; // example calculation for 1
          });
      } else if (selectedOption == '2') {
          setState(() {
            costZoneb  = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '3') {
          setState(() {
            costZoneb   = 15.00; // example calculation for 3
          });
      } else if (selectedOption == '4') {
          setState(() {
           costZoneb= 16.00; // example calculation for 3
          });
      } else if (selectedOption == '5') {
          setState(() {
            costZoneb = 16.00; // example calculation for 3
          });
      }else if (selectedOption == '6') {
          setState(() {
            costZoneb = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '7') {
          setState(() {
           costZoneb = 17.00; // example calculation for 3
          });
      }else if (selectedOption == '8') {
          setState(() {
           costZoneb = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '9') {
          setState(() {
           costZoneb = 18.00; // example calculation for 3
          });
      }else if (selectedOption == '10') {
          setState(() {
           costZoneb = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '11') {
          setState(() {
           costZoneb = 19.00; // example calculation for 3
          });
      }else if (selectedOption == '12') {
          setState(() {
           costZoneb = 20.00; // example calculation for 3
          });
      }else if (selectedOption == '13') {
          setState(() {
            costZoneb= 21.00; // example calculation for 3
          });
      }else if (selectedOption == '14') {
          setState(() {
           costZoneb = 22.00; // example calculation for 3
          });
      }else if (selectedOption == '15') {
          setState(() {
           costZoneb = 23.00; // example calculation for 3
          });
      }else if (selectedOption == '16') {
          setState(() {
           costZoneb = 24.00; // example calculation for 3
          });
      }else if (selectedOption == '17') {
          setState(() {
          costZoneb = 25.00; // example calculation for 3
          });
      }else if (selectedOption == '18') {
          setState(() {
            costZoneb = 26.00; // example calculation for 3
          });
      }else if (selectedOption == '19') {
          setState(() {
           costZoneb = 27.00; // example calculation for 3
          });
      }else if (selectedOption == '20') {
          setState(() {
           costZoneb = 28.00; // example calculation for 3
          });
      }else if (selectedOption == '21') {
          setState(() {
           costZoneb = 30.00; // example calculation for 3
          });
      }else if (selectedOption == '22') {
          setState(() {
            costZoneb = 31.00; // example calculation for 3
          });
      }else if (selectedOption == '23') {
          setState(() {
           costZoneb = 32.00; // example calculation for 3
          });
      }else if (selectedOption == '24') {
          setState(() {
           costZoneb = 33.00; // example calculation for 3
          });
      }else if (selectedOption == '25') {
          setState(() {
            costZoneb = 34.00; // example calculation for 3
          });
      }else if (selectedOption == '26') {
          setState(() {
            costZoneb = 35.00; // example calculation for 3
          });
      }else if (selectedOption == '27') {
          setState(() {
            costZoneb = 36.00; // example calculation for 3
          });
      }else if (selectedOption == '28') {
          setState(() {
            costZoneb = 37.00; // example calculation for 3
          });
      }else if (selectedOption == '29') {
          setState(() {
            costZoneb = 38.00; // example calculation for 3
          });
      }else if (selectedOption == '30') {
          setState(() {
           costZoneb = 40.00; // example calculation for 3
          });
      }else if (selectedOption == '31') {
          setState(() {
           costZoneb = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '32') {
          setState(() {
           costZoneb = 41.00; // example calculation for 3
          });
      }else if (selectedOption == '33') {
          setState(() {
          costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '34') {
          setState(() {
            costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '35') {
          setState(() {
          costZoneb = 42.00; // example calculation for 3
          });
      }else if (selectedOption == '36') {
          setState(() {
           costZoneb = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '37') {
          setState(() {
           costZoneb = 43.00; // example calculation for 3
          });
      }else if (selectedOption == '38') {
          setState(() {
           costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '39') {
          setState(() {
            costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '40') {
          setState(() {
            costZoneb = 44.00; // example calculation for 3
          });
      }else if (selectedOption == '41') {
          setState(() {
            costZoneb = 45.00; // example calculation for 3
          });
      }else if (selectedOption == '42') {
          setState(() {
            costZoneb = 46.00; // example calculation for 3
          });
      }else if (selectedOption == '43') {
          setState(() {
            costZoneb = 47.00; // example calculation for 3
          });
      }else if (selectedOption == '44') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '45') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '46') {
          setState(() {
            costZoneb = 48.00; // example calculation for 3
          });
      }else if (selectedOption == '47') {
          setState(() {
            costZoneb = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '48') {
          setState(() {
            costZoneb = 49.00; // example calculation for 3
          });
      }else if (selectedOption == '49') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '50') {
          setState(() {
           costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '51') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '52') {
          setState(() {
            costZoneb = 50.00; // example calculation for 3
          });
      }else if (selectedOption == '53') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '54') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '55') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '56') {
          setState(() {
           costZoneb = 51.00; // example calculation for 3
          });
      }else if (selectedOption == '57') {
          setState(() {
            costZoneb = 52.00; // example calculation for 3
          });
      }else if (selectedOption == '58') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '59') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '60') {
          setState(() {
            costZoneb = 53.00; // example calculation for 3
          });
      }else if (selectedOption == '61') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '62') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '63') {
          setState(() {
            costZoneb = 54.00; // example calculation for 3
          });
      }else if (selectedOption == '64') {
          setState(() {
            costZoneb = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '65') {
          setState(() {
            costZoneb = 55.00; // example calculation for 3
          });
      }else if (selectedOption == '66') {
          setState(() {
            costZoneb = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '67') {
          setState(() {
            costZoneb = 56.00; // example calculation for 3
          });
      }else if (selectedOption == '68') {
          setState(() {
            costZoneb = 57.00; // example calculation for 3
          });
      }else if (selectedOption == '69') {
          setState(() {
            costZoneb = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '70') {
          setState(() {
            costZoneb = 58.00; // example calculation for 3
          });
      }else if (selectedOption == '71') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '72') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '73') {
          setState(() {
            costZoneb = 59.00; // example calculation for 3
          });
      }else if (selectedOption == '74') {
          setState(() {
            costZoneb = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '75') {
          setState(() {
            costZoneb = 60.00; // example calculation for 3
          });
      }else if (selectedOption == '76') {
          setState(() {
            costZoneb = 61.00; // example calculation for 3
          });
      }else if (selectedOption == '77') {
          setState(() {
            costZoneb = 61.00; // example calculation for 3
          });
      }
      
    });
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
                child: Text("Ems Parcels"))
            ],
          ),
        ),
      ),
      body: PageView(
        children: [
          ListView(
            padding: EdgeInsets.all(8.0),
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
                                "• Choose package",
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
                    SizedBox(
                          height: 30,
                        ),
                   
                   Center(
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                      height: 20,
                    ),
                    
                   
                    // documents
                    GestureDetector(
                      onTap: (){
                        nextScreen(context, InternationalDocuments());
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                        ),
                      padding: EdgeInsets.all(16),
                      child: const Column(
                        children: [
                          Text("📤",style: TextStyle(
                              fontSize: 60
                            )),
                            Text("Documents")
                        ],
                      )
                                    ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // parcels
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
                          Text("📮",style: TextStyle(
                              fontSize: 60
                            )),
                            Text("Parcels")
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
                              "•	International Zones",
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
                   
                        // divider
                        SizedBox(
                          height: 30,
                        ),
                        
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
            
          ),
          
        ],
      ),
    );
  }
}



