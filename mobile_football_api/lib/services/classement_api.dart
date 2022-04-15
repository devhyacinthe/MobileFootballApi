import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_football_api/models/classement_models.dart';

class ClassementApi {
  static Future<List<ClassementModel>> getClassementPL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "39"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }

    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }

  static Future<List<ClassementModel>> getClassementLiga() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "140"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }

    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }

  static Future<List<ClassementModel>> getClassementLigue1() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "61"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }

    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }

  static Future<List<ClassementModel>> getClassementDE() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "78"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }
    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }

  static Future<List<ClassementModel>> getClassementCL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "2"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }

    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }

  static Future<List<ClassementModel>> getClassementEL() async {
    var uri = Uri.https('api-football-beta.p.rapidapi.com', '/standings',
        {"season": "2021", "league": "3"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "api-football-beta.p.rapidapi.com",
      "X-RapidAPI-Key": "9db5ba0023msh7add00b1a571320p16004ejsn73f7108d4b57",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i = 0;
        i < data['response'][0]['league']['standings'][0].length;
        i = i + 1) {
      _temp.add(data['response'][0]['league']['standings'][0][i]);
    }

    return ClassementModel.ClassementModelFromSnapshot(_temp);
  }
}
