import 'package:flutter/material.dart';

class CharacterDetailsPage extends StatelessWidget {
  final dynamic character;

  const CharacterDetailsPage({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl = character['image'] ?? 'https://via.placeholder.com/150';
    String name = character['name'] ?? 'No Name';
    String species = character['species'] ?? 'Unknown';
    String gender = character['gender'] ?? 'Unknown';
    String house = character['house'] ?? 'Unknown';
    String dateOfBirth = character['dateOfBirth'] ?? 'Unknown';
    String ancestry = character['ancestry'] ?? 'Unknown';
    String eyeColour = character['eyeColour'] ?? 'Unknown';
    String hairColour = character['hairColour'] ?? 'Unknown';
    String patronus = character['patronus'] ?? 'Unknown';
    String actor = character['actor'] ?? 'Unknown';
    String wandWood = character['wand']['wood'] ?? 'Unknown';
    String wandCore = character['wand']['core'] ?? 'Unknown';
    String wandLength = character['wand']['length']?.toString() ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(
        title: Text('$name Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(imageUrl),
              ),
              SizedBox(height: 16),

              Text(
                'Name: $name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('Species: $species'),
              Text('Gender: $gender'),
              Text('House: $house'),
              Text('Date of Birth: $dateOfBirth'),
              Text('Ancestry: $ancestry'),
              Text('Eye Colour: $eyeColour'),
              Text('Hair Colour: $hairColour'),
              Text('Patronus: $patronus'),
              Text('Actor: $actor'),

              SizedBox(height: 16),

              // Wand Details
              Text(
                'Wand Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Wood: $wandWood'),
              Text('Core: $wandCore'),
              Text('Length: $wandLength inches'),
              SizedBox(height: 16),

              // Character Role
              Text(
                'Role:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(character['hogwartsStaff'] ? 'Hogwarts Staff' : 'Not a staff member'),
              Text(character['hogwartsStudent'] ? 'Hogwarts Student' : 'Not a student'),
              SizedBox(height: 16),
              Text(
                'Brief Description:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'The character $name is known for their role as ${character['role']}.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
