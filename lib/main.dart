// Importing Flutter's material design library.
// This gives access to widgets like MaterialApp, Scaffold, AppBar, etc.
import 'package:flutter/material.dart';

/// The main function is the entry point of every Dart/Flutter app.
void main() {
  // runApp starts the Flutter app by attaching it to the screen and inflating the widget tree.
  runApp(const MyApp());
}

/// This is the root widget of the app, using a StatelessWidget,
/// which means the UI will not change dynamically (no state management needed here).
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor with an optional key for widget identity.

  // The build method returns the UI structure (a widget tree).
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The home property defines the default screen of the app.
      home: Scaffold(
        // Scaffold provides the basic material design visual layout structure (app bar, body, etc.)
        appBar: AppBar(
          title: const Text('My First Flutter App'), // Title text inside the app bar
        ),

        // The body is the main area of the screen.
        body: Center(
          // Center widget aligns its child (Column of cards) in the middle of the screen.
          child: SingleChildScrollView(
            // Allows vertical scrolling in case content overflows the screen height
            child: Column(
              mainAxisSize: MainAxisSize.min, // Shrink wrap the column to fit content
              children: [
                // ========== First Product Card ==========
                Card(
                  elevation: 4, // Adds a shadow effect to the card
                  margin: const EdgeInsets.all(6), // Outer spacing
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10), // Inner padding
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Wrap content tightly
                      children: [
                        // Product image loaded from the web
                        Image.network(
                          'https://picsum.photos/250?image=6',
                          height: 150,
                        ),

                        const SizedBox(height: 16), // Vertical spacing

                        // Product name text
                        const Text(
                          'Mac Lap',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8), // Vertical spacing

                        // Product price text
                        const Text(
                          'Price: Ksh 250,000',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // "Add to Cart" button
                        ElevatedButton(
                          onPressed: () {
                            print('Add Mac Lap to Cart');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Button background
                            foregroundColor: Colors.white, // Text color
                          ),
                          child: const Text('Add to Cart'),
                        ),
                      ],
                    ),
                  ),
                ),

                // ========== Second Product Card ==========
                Card(
                  elevation: 4, // Shadow effect
                  margin: const EdgeInsets.all(6), // Spacing around the card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded card edges
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10), // Inner content padding
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Second image, different from the first
                        Image.network(
                          'https://picsum.photos/250?image=9',
                          height: 150,
                        ),

                        const SizedBox(height: 16),

                        // Product title
                        const Text(
                          'Surface Laptop',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Product price
                        const Text(
                          'Price: Ksh 180,000',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Action button
                        ElevatedButton(
                          onPressed: () {
                            print('Add Surface Laptop to Cart');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Background color
                            foregroundColor: Colors.white, // Text color
                          ),
                          child: const Text('Add to Cart'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
