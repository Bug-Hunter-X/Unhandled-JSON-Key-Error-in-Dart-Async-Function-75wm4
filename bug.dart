```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns JSON
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key in the JSON
      final nonExistentValue = jsonData['nonExistentKey'];
      print(nonExistentValue);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```