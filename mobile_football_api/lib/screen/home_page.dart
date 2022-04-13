import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_football_api/screen/a_propos_page.dart';
import 'package:mobile_football_api/screen/bundesliga.dart';
import 'package:mobile_football_api/screen/champions_league.dart';
import 'package:mobile_football_api/screen/classement_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_football_api/screen/europe_league.dart';
import 'package:mobile_football_api/screen/liga.dart';
import 'package:mobile_football_api/screen/ligue1.dart';
import 'package:mobile_football_api/screen/premier_league.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Get.to(() => const ClassementPage());
      } else if (_selectedIndex == 2) {
        Get.to(() => const AProposPage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Matchs",
            style: TextStyle(color: Colors.lightBlue, fontSize: 22)),
        elevation: 3,
      ),
      body: const Center(
        child: Text("Bienvenue ",
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
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
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/11/29/02/05/audience-1866738_960_720.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: const [
                Text('FootBall Api',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ListTile(
            title: Text("Premier League",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const PremierLeague());
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Liga",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const Liga());
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Ligue 1",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const Ligue1());
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("BundesLiga",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const Bundesliga());
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Champions League",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const Championsleague());
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Europa League",
                style: GoogleFonts.mcLaren(
                    textStyle: const TextStyle(
                        fontSize: 20, color: Colors.lightBlue))),
            onTap: () {
              Get.to(() => const Europaleague());
            },
          ),
          const SizedBox(height: 10),
        ],
      )),
    );
  }
}
