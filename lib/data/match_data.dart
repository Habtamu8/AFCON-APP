import '../models/match_model.dart';

class MatchData {
  static List<MatchModel> getMatches() {
    return [
      MatchModel(
        id: "1",
        homeTeam: "Egypt",
        awayTeam: "Nigeria",
        homeLogo: "assets/images/egypt flag.jpeg",
        awayLogo: "assets/images/nigeria flag.png",
      ),
      MatchModel(
        id: "2",
        homeTeam: "Senegal",
        awayTeam: "Cameroon",
        homeLogo: "assets/images/senegal.jpg",
        awayLogo: "assets/images/cameroon.png",
      ),
    ];
  }
}
