import 'package:flutter/material.dart';
import 'package:mobile_football_api/models/classement_models.dart';
import 'package:mobile_football_api/services/classement_api.dart';
import 'package:mobile_football_api/widgets/table.dart';

class BundesClass extends StatefulWidget {
  const BundesClass({Key? key}) : super(key: key);

  @override
  State<BundesClass> createState() => _BundesClassState();
}

class _BundesClassState extends State<BundesClass> {
  List<ClassementModel> _class = [];

  bool _isloading = true;

  @override
  void initState() {
    getClass();
    super.initState();
  }

  Future<void> getClass() async {
    _class = await ClassementApi.getClassementDE();
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BundesLiga'),
          centerTitle: true,
        ),
        body: _isloading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _class.length,
                itemBuilder: ((context, index) {
                  return TableClassement(
                      name: _class[index].name,
                      points: _class[index].points,
                      logo: _class[index].logo,
                      mj: _class[index].matchPlay,
                      mg: _class[index].matchWin,
                      mn: _class[index].matchDraw,
                      mp: _class[index].matchLose,
                      bm: _class[index].goalsM,
                      be: _class[index].goalsE,
                      db: _class[index].goalDiff);
                }),
              ));
  }
}
