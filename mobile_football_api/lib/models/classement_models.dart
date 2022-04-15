class ClassementModel {
  final int rank;
  final String name;
  final int points;
  final String logo;
  final int goalDiff;
  final int matchPlay;
  final int matchWin;
  final int matchDraw;
  final int matchLose;
  final int goalsM;
  final int goalsE;

  ClassementModel({
    required this.rank,
    required this.name,
    required this.points,
    required this.logo,
    required this.goalDiff,
    required this.matchPlay,
    required this.matchWin,
    required this.matchDraw,
    required this.matchLose,
    required this.goalsM,
    required this.goalsE,
  });

  factory ClassementModel.fromJson(dynamic json) {
    return ClassementModel(
      rank: json['rank'] as int,
      name: json['team']['name'] as String,
      points: json['points'] as int,
      logo: json['team']['logo'] as String,
      goalDiff: json['goalsDiff'] as int,
      matchPlay: json['all']['played'] as int,
      matchWin: json['all']['win'] as int,
      matchDraw: json['all']['draw'] as int,
      matchLose: json['all']['lose'] as int,
      goalsM: json['all']['goals']['for'] as int,
      goalsE: json['all']['goals']['against'] as int,
    );
  }

  static List<ClassementModel> ClassementModelFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ClassementModel.fromJson(data);
    }).toList();
  }
}
