// MyInputTextField.dart
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:storystack/Models/book_model.dart';
import 'package:storystack/pages/BookDetails/bookdetails.dart';

class MyInputTextField extends StatefulWidget {
  const MyInputTextField({super.key, required this.booksList});

  final List<BookModel> booksList;

  @override
  // ignore: library_private_types_in_public_api
  _MyInputTextFieldState createState() => _MyInputTextFieldState();
}

class _MyInputTextFieldState extends State<MyInputTextField> {
  final TextEditingController _searchController = TextEditingController();
  // ignore: prefer_final_fields
  List<BookModel> _searchResults = [];
  bool _isExpanded = false;

  void _searchBooks(String query) {
    _searchResults.clear();
    if (query.isEmpty) {
      setState(() {
        _isExpanded = false; // Collapse the container if search query is empty
      });
      return;
    }
    for (var book in widget.booksList) {
      if (book.title!.toLowerCase().contains(query.toLowerCase()) ||
          book.author!.toLowerCase().contains(query.toLowerCase())) {
        _searchResults.add(book);
      }
    }
    setState(() {
      _isExpanded = _searchResults
          .isNotEmpty; // Expand the container if search results are found
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: _searchController,
          onChanged: _searchBooks,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search,
                color: Colors.blue), // Change icon color to blue
            hintText: "Search here . .",
            hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.5)), // Grey hint text color
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            filled: true, // Fill the background of the input field
            fillColor: Colors.white, // White background color
          ),
        ),
        AnimatedContainer(
          duration: const Duration(
              milliseconds: 300), // Adjust the duration as needed
          curve: Curves.easeInOut, // Use your preferred animation curve
          height: _isExpanded
              ? (_searchResults.length * 70.0)
              : 0, // Expand or collapse the container based on the number of search results
          color: Colors.white, // White background color for the expanded list
          child: ListView.builder(
            itemCount: _searchResults.length,
            itemBuilder: (context, index) {
              BookModel book = _searchResults[index];
              return ListTile(
                title: Text(book.title ?? ''),
                subtitle: Text(book.author ?? ''),
                onTap: () {
                  Get.to(BookDetails(book: book));
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
