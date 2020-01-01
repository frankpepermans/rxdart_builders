import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

class RepeatBuilder<T> extends StreamBuilder<T> {
  RepeatBuilder(
      {Key key,
      T initialData,
      int count,
      @required StreamFactory1<int, T> streamFactory,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.repeat(streamFactory, count),
            builder: builder);
}
