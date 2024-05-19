import 'dart:convert';
import 'package:http/http.dart' as http;

class DataFetcher<T> {
  Future<T> fetchData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as T;
      } else {
        throw Exception('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}

void main() async {
  final dataFetcher = DataFetcher<Map<String, dynamic>>();

  final sampleUrl = 'https://jsonplaceholder.typicode.com/posts/1';
  try {
    final postData = await dataFetcher.fetchData(sampleUrl);
    print('Post title: ${postData['title']}');
  } catch (e) {
    print('Error: $e');
  }
}