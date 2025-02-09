```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
    } else {
      throw Exception('Failed to load data - Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error in fetchData: $e');
    rethrow; // Re-throw to be handled by calling function
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    // Handle exceptions in main function
    print('An error occurred: $e');
  }
}
```