import 'package:afcon_app/widgets/custom_appbar.dart';
import 'package:afcon_app/data/match_data.dart';
import 'package:afcon_app/features/Login/login_screen.dart';
import 'package:afcon_app/features/drawer/drawer_screen.dart';
import 'package:afcon_app/models/match_model.dart';
import 'package:afcon_app/widgets/match_card.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<MatchModel> matches = MatchData.getMatches();

  void handlePrediction(
    BuildContext context,
    MatchModel match,
    String result,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Prediction saved: ${match.homeTeam} vs ${match.awayTeam} → $result",
        ),
      ),
    );

    // Later: send to backend
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: CustomAppbar(
        bgcolor: const Color.fromARGB(255, 9, 83, 11),
        showmenuItem: true,
        title: const Text(
          "Welcome,",
          style: TextStyle(color: Colors.white),
        ),
        action: [
          IconButton(
            icon: const Icon(Icons.logout , color: Colors.white,),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
                (route) => false,
              );
            },
          ),
          const Text("Logout", style: TextStyle(color: Colors.white)),
        ],
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
