import 'fetchdata.dart';

void main() async {
//for fetching different data types
  final stringFetcher = DataFetcher<String>();
  final listFetcher = DataFetcher<List<dynamic>>();
  final intFetcher = DataFetcher<int>();

 // URLs for fetching data
  const stringUrl = 'https://jsonplaceholder.typicode.com/posts/1';
  const listUrl = 'https://jsonplaceholder.typicode.com/posts';
  const intUrl = 'https://jsonplaceholder.typicode.com/posts/1';
  try {
    // fetch a string
    final fetchedString = await stringFetcher.fetchData(stringUrl);
    print('Fetched String: $fetchedString');

    // fetch a list
    final fetchedList = await listFetcher.fetchData(listUrl);
    print('Fetched List: $fetchedList');

    // fetch a int
    final fetchedInt = await intFetcher.fetchData(intUrl);
    print('Fetched Int: $fetchedInt');
  } catch (e) {
    print('Error: $e');
  }
}