import 'package:flutter/material.dart';

void main() => runApp(HealthApp());

class HealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Health Tips',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// 🔹 Home screen with 3 individual cards
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Tips'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // 🥤 Tip 1
            Card(
              child: ListTile(
                leading: Icon(Icons.local_drink, color: Colors.blue),
                title: Text('Drink Water'),
                subtitle: Text('Stay hydrated every day'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TipPage(
                        title: 'Drink Water',
                        content:
                            'Drinking enough water helps you stay focused, energetic, and healthy.',
                      ),
                    ),
                  );
                },
              ),
            ),

            // 🏃 Tip 2
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_run, color: Colors.green),
                title: Text('Exercise Daily'),
                subtitle: Text('Keep your body active'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TipPage(
                        title: 'Exercise Daily',
                        content:
                            'Exercise improves your mood and strengthens your heart and muscles.',
                      ),
                    ),
                  );
                },
              ),
            ),

            // 🍎 Tip 3
            Card(
              child: ListTile(
                leading: Icon(Icons.food_bank, color: Colors.orange),
                title: Text('Eat Healthy'),
                subtitle: Text('Balanced meals are key'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TipPage(
                        title: 'Eat Healthy',
                        content:
                            'Eating vegetables, fruits, and whole grains supports a strong immune system.',
                      ),
                    ),
                  );
                },
              ),
            ),

            // 👩‍🎓 Students can add 3 more here by copying the structure above
          ],
        ),
      ),
    );
  }
}

// 🔹 New screen (like Android activity) for each tip
class TipPage extends StatelessWidget {
  final String title;
  final String content;

  const TipPage({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          content,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
