import 'package:asynchronous/asynchronous.dart' as asynchronous;
import 'package:http/http.dart';


// Using async keyword
Future<void> main(List<String> arguments) async {
  try {
    final result = await Client().get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    print(result.body);
  } catch (e) {
    print('err');
  }
}

// OR, Using .then method
void main(List<String> arguments) {
  final result = Client().get(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  ).then((res) => print(res.body))
  .catchError((e) => print(e));
}
