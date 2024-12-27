```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrect handling of JSON response
      final data = jsonDecode(response.body);
      // Assuming data is a list, this will throw an error if it's not.
      for (var item in data) {
        print(item['name']); // potential error: item might not have a 'name' key
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```