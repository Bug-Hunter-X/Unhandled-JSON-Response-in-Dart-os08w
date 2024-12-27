```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        for (var item in jsonBody) {
          if (item is Map && item.containsKey('name')) {
            print(item['name']);
          } else {
            print('Invalid item format or missing name key');
          }
        }
      } else {
        print('Unexpected JSON response format: Expected a List');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```