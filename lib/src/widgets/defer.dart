import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

class DeferBuilder<T> extends StreamBuilder<T> {
  DeferBuilder(
      {Key key,
      T initialData,
      bool reusable = false,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.defer(streamFactory, reusable: reusable),
            builder: builder);
}
