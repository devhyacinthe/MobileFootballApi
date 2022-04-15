import 'package:flutter/material.dart';
import 'package:mobile_football_api/models/classement_models.dart';
import 'package:mobile_football_api/services/classement_api.dart';
import 'package:mobile_football_api/widgets/table.dart';

class LigaClass extends StatefulWidget {
  const LigaClass({Key? key}) : super(key: key);

  @override
  State<LigaClass> createState() => _LigaClassState();
}

class _LigaClassState extends State<LigaClass> {
  List<ClassementModel> _class = [];

  bool _isloading = true;

  @override
  void initState() {
    getClass();
    super.initState();
  }

  Future<void> getClass() async {
    _class = await ClassementApi.getClassementLiga();
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liga'),
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
