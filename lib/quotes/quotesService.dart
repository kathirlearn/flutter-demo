import 'dart:convert';

import 'package:demo_test/quotes/quotes.dart';
import 'package:flutter/services.dart';

class QuotesService{
  Future<String> _loadLocalQuotes() async{
    return await rootBundle.loadString('assets/data/quotes.json');
  }

  Future<List<Quote>> loadQuotes() async {
    String jsonString = await _loadLocalQuotes();
    final List<dynamic> jsonResponse = json.decode(jsonString);

    // Map the JSON array into a Dart List of Quote objects
    return jsonResponse.map((data) => Quote.fromJson(data)).toList();
  }
}