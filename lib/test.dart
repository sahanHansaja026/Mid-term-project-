import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookdetails.dart'; // Import the BookDetails page

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
      'descripion':
          "The novel follows the story of a teenager named Holden Caulfield, who has just been expelled from his prep school. The narrative unfolds over the course of three days, during which Holden experiences various forms of alienation and his mental state continues to unravel. He criticizes the adult world as 'phony' and struggles with his own transition into adulthood. The book is a profound exploration of teenage rebellion, alienation, and the loss of innocence.",
    },
    {
      'name': 'One Hundred Years of Solitude',
      'Author': 'Gabriel García Márquez',
      'image': 'assets/images/book2.jpg',
      'price': '\$12.99',
      'descripion':
          "This novel is a multi-generational saga that focuses on the Buendía family, who founded the fictional town of Macondo. It explores themes of love, loss, family, and the cyclical nature of history. The story is filled with magical realism, blending the supernatural with the ordinary, as it chronicles the family's experiences, including civil war, marriages, births, and deaths. The book is renowned for its narrative style and its exploration of solitude, fate, and the inevitability of repetition in history.",
    },
    {
      'name': 'In Search of Lost Time',
      'Author': 'Marcel Proust',
      'image': 'assets/images/book3.jpg',
      'price': '\$10.99',
      'descripion':
          "This renowned novel is a sweeping exploration of memory, love, art, and the passage of time, told through the narrator's recollections of his childhood and experiences into adulthood in the late 19th and early 20th century aristocratic France. The narrative is notable for its lengthy and intricate involuntary memory episodes, the most famous being the 'madeleine episode'. It explores the themes of time, space and memory, but also raises questions about the nature of art and literature, and the complex relationships between love, sexuality, and possession.",
    },
    {
      'name': 'Ulysses',
      'Author': 'James Joyce',
      'image': 'assets/images/book4.jpg',
      'price': '\$10.99',
      'descripion':
          "Set in Dublin, the novel follows a day in the life of Leopold Bloom, an advertising salesman, as he navigates the city. The narrative, heavily influenced by Homer's Odyssey, explores themes of identity, heroism, and the complexities of everyday life. It is renowned for its stream-of-consciousness style and complex structure, making it a challenging but rewarding read",
    },
    {
      'name': 'Lolita',
      'Author': 'Vladimir Nabokov',
      'image': 'assets/images/book5.jpg',
      'price': '\$10.99',
      'descripion':
          "The novel tells the story of Humbert Humbert, a man with a disturbing obsession for young girls, or 'nymphets' as he calls them. His obsession leads him to engage in a manipulative and destructive relationship with his 12-year-old stepdaughter, Lolita. The narrative is a controversial exploration of manipulation, obsession, and unreliable narration, as Humbert attempts to justify his actions and feelings throughout the story.",
    },
    {
      'name': 'The Lord of the Rings',
      'Author': 'J. R. R. Tolkien',
      'image': 'assets/images/book6.jpg',
      'price': '\$10.99',
      'descripion':
          "This epic high-fantasy novel centers around a modest hobbit who is entrusted with the task of destroying a powerful ring that could enable the dark lord to conquer the world. Accompanied by a diverse group of companions, the hobbit embarks on a perilous journey across Middle-earth, battling evil forces and facing numerous challenges. The narrative, rich in mythology and complex themes of good versus evil, friendship, and heroism, has had a profound influence on the fantasy genre.",
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDetails(book: book),
                            ),
                          );
                        },
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
