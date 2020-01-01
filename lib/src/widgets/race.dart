import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class RaceBuilder<T> extends StreamBuilder<T> {
  RaceBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.race(streams),
            builder: builder);
}
