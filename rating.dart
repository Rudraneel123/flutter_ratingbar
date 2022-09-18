import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRate extends StatefulWidget {
  const MyRate({Key? key}) : super(key: key);

  @override
  State<MyRate> createState() => _MyRateState();
}

class _MyRateState extends State<MyRate> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating: $rating',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              width: 25,
              height: 25,
            ),
            RatingBar.builder(
              minRating: 1,
              maxRating: 5,
              initialRating: 0,
              itemBuilder: (context, _) => const Icon(
                Icons.flutter_dash,
                color: Colors.blue,
              ),
              onRatingUpdate: (rating) => setState(() {
                this.rating = rating;
              }),
              updateOnDrag: true,
            ),
          ],
        ),
      ),
    );
  }
}
