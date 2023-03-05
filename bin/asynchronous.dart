void main(List<String> arguments) {
  // 'event' represents the value returned by the 'yeild' clause
  // 'listen' method is used to subscribe to a stream & receives emitted values
  createMessageStream().listen((event) {
    print(event);
  });

  //As if it's a list, it works with some methods
  createMessageStream().map((msg) => msg.toUpperCase())
  .where((msg) => msg.length > 5)
  .listen((event) {
    print(event);
  });
}

//Defining async generator which emits messages
Stream<String> createMessageStream() async* {
  yield 'Hi!';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Have you heard of...';
  await Future.delayed(const Duration(seconds: 1));
  yield 'FLUTTER?';
}
