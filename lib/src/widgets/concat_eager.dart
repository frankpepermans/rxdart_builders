import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class ConcatEagerBuilder<T> extends StreamBuilder<T> {
  ConcatEagerBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.concatEager(streams),
            builder: builder);
}
