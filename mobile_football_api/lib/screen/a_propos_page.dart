import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_football_api/screen/classement_page.dart';
import 'package:mobile_football_api/screen/home_page.dart';

class AProposPage extends StatefulWidget {
  const AProposPage({Key? key}) : super(key: key);

  @override
  State<AProposPage> createState() => _AProposPageState();
}

class _AProposPageState extends State<AProposPage> {
  int _selectedIndex = 2;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Get.to(() => const HomePage());
      } else if (_selectedIndex == 1) {
        Get.to(() => const ClassementPage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("A Propos",
            style: TextStyle(color: Colors.lightBlue, fontSize: 22)),
        elevation: 3,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
              "Application creer et Developper par DhjCorp , tous droit réservé",
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), label: "Matchs"),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), label: "Classements"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "A Propos")
        ],
        currentIndex: _selectedIndex,
        elevation: 2,
        onTap: _onTapped,
      ),
    );
  }
}
