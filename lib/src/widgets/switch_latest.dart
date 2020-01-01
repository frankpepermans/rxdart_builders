import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class SwitchLatestBuilder<T> extends StreamBuilder<T> {
  SwitchLatestBuilder(
      {Key key,
      T initialData,
      bool reusable = false,
      @required Stream<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.switchLatest(streams),
            builder: builder);
}
