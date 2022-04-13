class MatchCard {
  final String homeName;
  final String homeLogo;
  final String awayName;
  final String awayLogo;
  final int? scoreHome;
  final int? scoreAway;
  final String minute;

  MatchCard(
      {required this.homeName,
      required this.homeLogo,
      required this.awayName,
      required this.awayLogo,
      required this.scoreHome,
      required this.scoreAway,
      required this.minute});

  factory MatchCard.fromJson(dynamic json) {
    return MatchCard(
      homeName: json['teams']['home']['name'] as String,
      homeLogo: json['teams']['home']['logo'] as String,
      awayName: json['teams']['away']['name'] as String,
      awayLogo: json['teams']['away']['logo'] as String,
      scoreHome: json['goals']['home'] as int?,
      scoreAway: json['goals']['away'] as int?,
      minute: json['fixture']['date'] as String,
    );
  }

  static List<MatchCard> matchCardFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return MatchCard.fromJson(data);
    }).toList();
  }
}
