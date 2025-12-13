import 'package:afcon_app/core/widgets/custom_appbar.dart';
import 'package:afcon_app/models/match_model.dart';
import 'package:afcon_app/widgets/match_card.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<MatchModel> matches = [
  MatchModel(
    id: "1",
    homeTeam: "Egypt",
    awayTeam: "Nigeria",
    homeLogo: "assets/logos/egypt.png",
    awayLogo: "assets/logos/nigeria.png",
  ),
  MatchModel(
    id: "2",
    homeTeam: "Senegal",
    awayTeam: "Cameroon",
    homeLogo: "assets/logos/senegal.png",
    awayLogo: "assets/logos/cameroon.png",
  ),
];

  void handlePrediction(
      BuildContext context, MatchModel match, String result) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Prediction saved: ${match.homeTeam} vs ${match.awayTeam} → $result",
        ),
      ),
    );
    // TODO: Send prediction to backend
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: CustomAppbar(
        bgcolor: const Color.fromARGB(255, 9, 83, 11),
        showmenuItem: true,
        title: Text("Welcome,", style: TextStyle(color: Colors.white)),
        action: [Icon(Icons.doorbell, color: Colors.white)],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return MatchCard(
            match: match,
            onPredict: (result) =>
                handlePrediction(context, match, result),
          );
        },
      ),
    );
  }
}
