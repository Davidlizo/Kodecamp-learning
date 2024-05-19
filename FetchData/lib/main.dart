import 'fetchdata.dart';

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