import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';
import 'package:rxdart_builders/src/widgets/shared/tuple.dart';

class Zip2Builder<A, B> extends StreamBuilder<Tuple2<A, B>> {
  Zip2Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required AsyncWidget2Builder<A, B> builder})
      : super(
            key: key,
            initialData: (initialDataA != null || initialDataB != null)
                ? Tuple2(initialDataA, initialDataB)
                : null,
            stream: Rx.zip2(streamA, streamB, (A a, B b) => Tuple2(a, b)),
            builder:
                (BuildContext context, AsyncSnapshot<Tuple2<A, B>> snapshot) =>
                    builder(
                        context,
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item1),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item2)));
}
