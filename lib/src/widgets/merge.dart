import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class MergeBuilder<T> extends StreamBuilder<T> {
  MergeBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.merge(streams),
            builder: builder);
}
