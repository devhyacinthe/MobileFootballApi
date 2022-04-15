import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableClassement extends StatelessWidget {
  const TableClassement(
      {Key? key,
      required this.name,
      required this.points,
      required this.logo,
      required this.mj,
      required this.mg,
      required this.mn,
      required this.mp,
      required this.bm,
      required this.be,
      required this.db})
      : super(key: key);
  final String name;
  final int points;
  final String logo;
  final int mj;
  final int mg;
  final int mn;
  final int mp;
  final int bm;
  final int be;
  final int db;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: Colors.lightBlue,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: SizedBox(
            width: 450,
            height: 125,
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(logo),
                    ),
                    const SizedBox(width: 8),
                    Text(name,
                        style: GoogleFonts.acme(
                            textStyle: const TextStyle(fontSize: 25),
                            color: Colors.black87))
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          Text("Pts",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(points.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("MJ",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(mj.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("MG",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(mg.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(children: [
                            Text("MN",
                                style: GoogleFonts.amita(
                                    textStyle: const TextStyle(fontSize: 18),
                                    color: Colors.white)),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(mn.toString(),
                                style: GoogleFonts.amita(
                                    textStyle: const TextStyle(fontSize: 18),
                                    color: Colors.black54)),
                          ]),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("MP",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(mp.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("BM",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(bm.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("BE",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(be.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54)),
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(children: [
                          Text("DB",
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.white)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(db.toString(),
                              style: GoogleFonts.amita(
                                  textStyle: const TextStyle(fontSize: 18),
                                  color: Colors.black54))
                        ]),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
