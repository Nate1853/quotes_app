import 'package:flutter/material.dart';
import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wild', text: 'this is the first quote'),
    Quote(author: 'Oscar Wild2', text: 'this is the second quote'),
    Quote(author: 'Oscar Wild3', text: 'this is the third quote')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((item) => QuoteCard(quote: item)).toList(),
        )
    );
  }
}



