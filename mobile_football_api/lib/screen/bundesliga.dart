import 'package:flutter/material.dart';
import 'package:mobile_football_api/models/match_card.dart';
import 'package:mobile_football_api/services/match_card_api.dart';
import 'package:mobile_football_api/widgets/card_football.dart';

class Bundesliga extends StatefulWidget {
  const Bundesliga({Key? key}) : super(key: key);

  @override
  State<Bundesliga> createState() => _BundesligaState();
}

class _BundesligaState extends State<Bundesliga> {
  List<MatchCard> _match = [];

  bool _isloading = true;

  @override
  void initState() {
    getMatchs();
    super.initState();
  }

  Future<void> getMatchs() async {
    _match = await MatchCardApi.getMatchDe();
    setState(() {
      _isloading = false;
    });
    print(_match);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Bundesliga"), centerTitle: true),
        body: _isloading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _match.length,
                itemBuilder: (((context, index) {
                  return CardWid(
                    homeName: _match[index].homeName,
                    awayName: _match[index].awayName,
                    homeLogo: _match[index].homeLogo,
                    awayLogo: _match[index].awayLogo,
                    scoreHome: _match[index].scoreHome,
                    scoreAway: _match[index].scoreAway,
                    minute: _match[index].minute,
                  );
                }))));
  }
}
