import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TestPage());

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

  // Sample book data
  final List<Map<String, dynamic>> books = [
    {
      'name': 'The Catcher in the Rye',
      'Author': 'J. D. Salinger',
      'image': 'assets/images/book1.jpg',
      'price': '\$15.99',
    },
    {
      'name': 'One Hundred Years of Solitude',
      'Author': 'Gabriel García Márquez',
      'image': 'assets/images/book2.jpg',
      'price': '\$12.99',
    },
    {
      'name': 'In Search of Lost Time',
      'Author': 'Marcel Proust',
      'image': 'assets/images/book3.jpg',
      'price': '\$10.99',
    },
    {
      'name': 'Ulysses',
      'Author': 'James Joyce',
      'image': 'assets/images/book4.jpg',
      'price': '\$10.99',
    },
    {
      'name': 'Lolita',
      'Author': 'Vladimir Nabokov',
      'image': 'assets/images/book5.jpg',
      'price': '\$10.99',
    },
    {
      'name': 'Lolita',
      'Author': 'Vladimir Nabokov',
      'image': 'assets/images/book5.jpg',
      'price': '\$10.99',
    },
  ];

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
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
              const SizedBox(height: 8.0),
              Text(
                'Best Books Now',
                style: GoogleFonts.inriaSerif(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Find your dream book according to your preferences and join our family. What are you waiting for?',
                style: GoogleFonts.inriaSerif(
                  fontSize: 14,
                  color: Color.fromARGB(255, 98, 97, 97),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search Books',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          searchQuery = _searchController.text;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 50, // Set the width of the image
                          height: 50, // Set the height of the image
                          child: Image.asset(
                            book['image'], // This is now a local asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          book['name'],
                          style: GoogleFonts.inriaSerif(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Author: ${book['Author']}\nPrice: ${book['price']}',
                          style: GoogleFonts.inriaSerif(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
