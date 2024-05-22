import 'package:flutter/material.dart';
import 'package:scoreapp/data/dummy_data.dart';
import 'package:scoreapp/widgets/current_matches.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'ScoreApp',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: newsImages.map((news) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        news.imageUrl,
                        width: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Ongoing",
              // textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 25,
            ),
            const CurrentMatches(),
          ],
        ),
      ),
    );
  }
}
