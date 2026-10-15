import 'package:demo_test/quotes/quotes.dart';
import 'package:demo_test/quotes/quotesService.dart';
import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Quote>>(
        future: QuotesService().loadQuotes(),
        builder: (context, snapshot){

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            // Dart now knows 'quotes' is a literal List
            List<Quote> quotes = snapshot.data!;

            return ListView.separated(
              itemCount: quotes.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(quotes[index].text),
                  subtitle: Text('- ${quotes[index].from}'),
                );
              },
              // 2. Added the separatorBuilder to insert lines between items
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,       // The layout height occupied by the divider
                  thickness: 1,    // The actual thickness of the line
                  color: Colors.blueGrey, // The color of the line
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }
    );
  }
}
