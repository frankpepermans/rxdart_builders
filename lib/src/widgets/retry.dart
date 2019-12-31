import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

class RetryBuilder<T> extends StreamBuilder<T> {
  RetryBuilder(
      {Key key,
      T initialData,
      int count,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.retry(streamFactory, count),
            builder: builder);
}
