import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coretico_Activity 1'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/pavlova.png ', fit: BoxFit.cover),
          Padding(padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pomegranate Pavlova",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8,),
              const Text(
                "A crisp-on-the-outside, marshmallow-soft pavlova topped with whipped cream and tart pomegranate seeds."
                "It's light, dramatic, a little fancy—but shockingly easy to make. If you're looking for a show-stopping winter dessert, this is it.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  height: 1.5
                ),
              ),
              const SizedBox(height: 12),
              Center(child: buildRatingRow()),
              const SizedBox(height: 24),
              buildRowTabs(),
            ],
          ),
          ),
        ],
      ),
    );
  }
    Widget buildRatingRow() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children:
          List.generate(5,
          (index) => Icon(
          index < 3 ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 20,
          ),
        ),
    ),

    const SizedBox(width: 8,),
    const Text("90 Reviews",
        style: TextStyle(
          color:  Colors.black,
          fontWeight: FontWeight.bold,
        ),
    ),
      ]
    );

    Widget buildIconTab(IconData icon, String label, String value) => Column (  
        children: [
          Icon(icon, color: Colors.yellow, size: 28),
          const SizedBox(height: 4,),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4),
          Text(value,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
          ),
        ],
      );

    Widget buildRowTabs() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.kitchen, "PREP:", "25 min"),
        buildIconTab(Icons.timer, "COOK:", "1 hr"),
        buildIconTab(Icons.restaurant, "FEEDS:", "4-6"),
      ],
    );
}
//NAA NA TA SA MAY ASSESTS NA PART WHERE U HAVE TO MAKE A FOLDER FOR PICTURESs
   