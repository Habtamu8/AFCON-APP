import 'package:flutter/material.dart';
import '../models/match_model.dart';

class MatchCard extends StatelessWidget {
  final MatchModel match;
  final Function(String result) onPredict;

  const MatchCard({
    super.key,
    required this.match,
    required this.onPredict,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF5F5F5),
            Color(0xFFEAEAEA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(

          children: [
             Text("Group Stage Games"),
            // Teams Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _teamLogo(match.homeLogo, match.homeTeam),
                _vsBadge(),
                _teamLogo(match.awayLogo, match.awayTeam),
              ],
            ),

            const SizedBox(height: 20),

            // Prediction Buttons
            Row(
              children: [
                _predictionButton(
                  label: "WIN",
                  color: Colors.green,
                  onTap: () => onPredict("${match.homeTeam} Win"),
                ),
                const SizedBox(width: 10),
                _predictionButton(
                  label: "DRAW",
                  color: Colors.orange,
                  onTap: () => onPredict("Draw"),
                ),
                const SizedBox(width: 10),
                _predictionButton(
                  label: "LOSE",
                  color: Colors.red,
                  onTap: () => onPredict("${match.awayTeam} Win"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _teamLogo(String logoPath, String team) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(
            logoPath,
            width: 44,
            height: 44,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          team,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _vsBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "VS",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _predictionButton({
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: color.withOpacity(0.6)),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
