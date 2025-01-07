import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TestPage());

// ignore: camel_case_types
class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // Define a TextEditingController to handle input in the search bar
  final TextEditingController _searchController = TextEditingController();

  // Variable to hold the search query
  String searchQuery = '';

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding:
                  EdgeInsets.only(right: 16.0), // Adds spacing on the right
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 28,
                child: Icon(
                  Icons.person,
                  color: Colors.white, // Optional: Add an icon or image
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Your',
                style: GoogleFonts.inriaSerif(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Adds some spacing between text
              Text(
                'Best Books Now',
                style: GoogleFonts.inriaSerif(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Adds some spacing between text
              Text(
                'Find your dream book according to your preferences and join our family. What are you waiting for?',
                style: GoogleFonts.inriaSerif(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 121, 121, 121),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                searchQuery,
                style: GoogleFonts.inriaSerif(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Search Bar with custom width and styled icon
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.92, // 80% of the screen width
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search Books',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    // Customize the suffix icon with background color and icon color
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          searchQuery = _searchController.text;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // Background color for the icon
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.search,
                          color:
                              Color.fromARGB(255, 255, 255, 255), // Icon color
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
