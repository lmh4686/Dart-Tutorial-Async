// OR, Using .then method
Future<void> main(List<String> arguments) async {
  //Runs every second
  final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
  final subscription = myPeriodicStream.listen((event) {
    print('A second has passed');
  });

  //Wait for 3 seconds to be executed
  await Future.delayed(const Duration(seconds: 3));
  subscription.cancel();
}
