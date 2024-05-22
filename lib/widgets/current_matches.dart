import 'package:flutter/material.dart';
import 'package:scoreapp/widgets/match_card.dart';

class CurrentMatches extends StatelessWidget {
  const CurrentMatches({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          MatchCard(),
          MatchCard(),
        ],
      ),
    );
  }
}
