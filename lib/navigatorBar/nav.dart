import 'package:app_loka_indira/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:app_loka_indira/navigatorBar/divisi.dart';
import 'package:app_loka_indira/navigatorBar/tentangApk.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_loka_indira/login/Start.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Start()));
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Divisi(),
    Tentang(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text('Keluar'),
          onPressed: signOut,
        )
      ]),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range,
            ),
            title: Text(
              'Kegiatan',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
            ),
            title: Text(
              'Divisi',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
            ),
            title: Text(
              'Tentang Aplikasi',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
