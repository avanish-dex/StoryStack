// SearchResultsPage.dart
import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String searchQuery;

  const SearchResultsPage({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    // Implement search functionality here based on the searchQuery
    // Display search results accordingly
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: Center(
        child: Text('Search Results for: $searchQuery'),
      ),
    );
  }
}
