import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: ListView.builder(
          itemCount: affirmations.length,
          itemBuilder: (BuildContext context, int index) {
            final affirmation = affirmations[index];
            return Center(
              child: SizedBox(
                width: 800,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        affirmation.imagePath,
                        width: 800,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              affirmation.contentText,
                              // style: TextStyle(fontSize: 20),
                              style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ),
    );
  }
}

class Affirmation {
  Affirmation({
    // required this.imageUrl,
    required this.imagePath,
    required this.contentText,  
  });

  // final String imageUrl;
  final String imagePath;
  final String contentText;
}

List<Affirmation> affirmations = [
  Affirmation(
    imagePath: 'assets/images/algie.png',
    contentText: 'You got this!'
    ),
  Affirmation(
    imagePath: 'assets/images/friends.jpg',
    contentText: 'Most enjoyable activities are not natural; they demand an effort that initially one is reluctant to make. But once the interaction starts to provide feedback to the person\'s skills, it usually begins to be intrinsically rewarding.'
    ),
  Affirmation(
    imagePath: 'assets/images/trin1.jpg',
    contentText: 'If you are interested in something, you will focus on it, and if you focus attention on anything, it is likely that you will become interested in it. Many of the things we find interesting are not so by nature, but because we took the trouble of paying attention to them.?'
    ),
  Affirmation(
    imagePath: 'assets/images/trin2.png',
    contentText: 'To overcome the anxieties and depressions of contemporary life, individuals must become independent of the social environment to the degree that they no longer respond exclusively in terms of its rewards and punishments. To achieve such autonomy, a person has to learn to provide rewards to herself. She has to develop the ability to find enjoyment and purpose regardless of external circumstances.?'
    ),
];

final ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold, 
    ),
  ),
);





