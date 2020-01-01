import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class ConcatBuilder<T> extends StreamBuilder<T> {
  ConcatBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.concat(streams),
            builder: builder);
}
