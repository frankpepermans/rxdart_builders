# rxdart_builders

## About

Rxdart_builder is a simple wrapper library for common rxdart Stream constructors.
The goal is to provide a Flutter-friendly way of creating Widgets, as opposed to combining
StreamBuilder and a Stream constructor.

This package is totally optional, you can just use direct rxdart constructors if you prefer to.

The difference in approach is best described via a few examples:

### Example with combineLatest, pure rxdart
```dart
Widget build(BuildContext context) => StreamBuilder(
    stream: Rx.combineLatest2(
        Stream.periodic(const Duration(seconds: 1), (i) => i),
        Stream.periodic(const Duration(seconds: 2), (i) => i),
        (int a, int b) => [a, b]),
    initialData: [-1, null],
    builder: (context, AsyncSnapshot<List<int>> snapshot) =>
        Text('${snapshot.data.first}, ${snapshot.data.last}'),
  );
```

### Example with combineLatest, rxdart_builders
```dart
Widget build(BuildContext context) => CombineLatest2Builder(
    streamA: Stream.periodic(const Duration(seconds: 1), (i) => i),
    streamB: Stream.periodic(const Duration(seconds: 2), (i) => i),
    initialDataA: -1,
    builder:
        (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB) =>
            Text('${snapshotA.data}, ${snapshotB.data}'),
  );
```

### Example with retry, pure rxdart
```dart
Widget build(BuildContext context) => StreamBuilder(
    stream: Rx.retry(() => userStream, 3),
    builder: (context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasError) {
          return Text('Oops!');
        }

        return Text('OK');
  });
```

### Example with retry, rxdart_builders
```dart
Widget build(BuildContext context) => RetryBuilder(
    count: 3,
    streamFactory: () => userStream,
    builder: (context, AsyncSnapshot<User> snapshot) => Text('OK'),
    retryErrorBuilder: (context, AsyncSnapshot<User> snapshot) => Text('Oops!'),
  );
```