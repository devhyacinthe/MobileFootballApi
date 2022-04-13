import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWid extends StatelessWidget {
  final String homeName;
  final String awayName;
  final String homeLogo;
  final String awayLogo;
  final int? scoreHome;
  final int? scoreAway;
  final String minute;
  const CardWid(
      {Key? key,
      required this.homeName,
      required this.awayName,
      required this.homeLogo,
      required this.awayLogo,
      required this.scoreHome,
      required this.scoreAway,
      required this.minute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Card(
        color: Colors.lightBlue,
        child: SizedBox(
            width: 300,
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(minute.replaceRange(19, 25, '').split('T').join('   '),
                        style: GoogleFonts.alata(
                            textStyle: const TextStyle(
                                fontSize: 16, color: Colors.black87)))
                  ]),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(homeLogo),
                              ),
                              const SizedBox(width: 8),
                              Text(homeName,
                                  style: GoogleFonts.almendra(
                                      textStyle: const TextStyle(
                                          fontSize: 22, color: Colors.black))),
                              const SizedBox(width: 12),
                              Text(scoreHome.toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          fontSize: 21,
                                          color: Colors.black87))),
                              const SizedBox(width: 8),
                              Text(" VS ",
                                  style: GoogleFonts.alice(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54))),
                              const SizedBox(width: 8),
                              Text(scoreAway.toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          fontSize: 21,
                                          color: Colors.black87))),
                              const SizedBox(width: 12),
                              Text(awayName,
                                  style: GoogleFonts.almendra(
                                      textStyle: const TextStyle(
                                          fontSize: 22, color: Colors.black))),
                              const SizedBox(width: 8),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(awayLogo),
                              )
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
