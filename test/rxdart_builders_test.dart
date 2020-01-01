import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import 'package:rxdart_builders/rxdart_builders.dart';

void main() {
  RetryWhenBuilder(
    streamFactory: () => Stream<void>.error(Error()),
    builder: (context, AsyncSnapshot<void> snapshot) => Text('OK'),
    retryErrorBuilder: (context, AsyncSnapshot<void> snapshot) => Text('Oops!'),
    retryWhenFactory: (e, s) {
      // we'll just keep on throwing
      return Stream<void>.error(Error());
    },
  );

  RetryBuilder(
    count: 3,
    streamFactory: () => Stream<void>.error(Error()),
    builder: (context, AsyncSnapshot<void> snapshot) => Text('OK'),
    retryErrorBuilder: (context, AsyncSnapshot<void> snapshot) => Text('Oops!'),
  );

  StreamBuilder(
      stream: Rx.retry(() => userStream, 3),
      builder: (context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasError) {
          return Text('Oops!');
        }

        return Text('OK');
      });

  CombineLatest2Builder(
    streamA: Stream.periodic(const Duration(seconds: 1), (i) => i),
    streamB: Stream.periodic(const Duration(seconds: 2), (i) => i),
    initialDataA: -1,
    initialDataB: -1,
    builder:
        (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB) =>
            Text('${snapshotA.data}, ${snapshotB.data}'),
  );

  StreamBuilder(
    stream: Rx.combineLatest2(
        Stream.periodic(const Duration(seconds: 1), (i) => i),
        Stream.periodic(const Duration(seconds: 2), (i) => i),
        (int a, int b) => [a, b]),
    initialData: [-1, -1],
    builder: (context, AsyncSnapshot<List<int>> snapshot) =>
        Text('${snapshot.data.first}, ${snapshot.data.last}'),
  );
}
