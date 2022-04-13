import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_football_api/models/match_card.dart';

class MatchCardApi {
  static Future<List<MatchCard>> getMatchPL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "39",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }

  static Future<List<MatchCard>> getMatchLiga() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "140",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }

  static Future<List<MatchCard>> getMatchLigue1() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "61",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }

  static Future<List<MatchCard>> getMatchDe() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "78",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }

  static Future<List<MatchCard>> getMatchCL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "2",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }

  static Future<List<MatchCard>> getMatchEL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/fixtures', {
      "to": "2022-04-19",
      "season": "2021",
      "league": "3",
      "from": "2022-04-12"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['response']) {
      _temp.add(i);
    }

    return MatchCard.matchCardFromSnapshot(_temp);
  }
}
