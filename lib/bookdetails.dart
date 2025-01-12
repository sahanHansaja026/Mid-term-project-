import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetails extends StatelessWidget {
  final Map<String, dynamic> book;

  const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          book['name'],
          style: GoogleFonts.inriaSerif(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                book['image'], // Display the book's image
                width: 150,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Author: ${book['Author']}',
              style: GoogleFonts.inriaSerif(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Price: ${book['price']}',
              style: GoogleFonts.inriaSerif(
                fontSize: 18,
                color: const Color.fromARGB(255, 41, 41, 41),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Descripion: ',
              style: GoogleFonts.inriaSerif(
                fontSize: 18,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '${book['descripion']}',
              style: GoogleFonts.inriaSerif(
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
