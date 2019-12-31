import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

typedef RetryWhenFactory = Stream<void> Function(
    dynamic error, StackTrace stack);

class RetryWhenBuilder<T> extends StreamBuilder<T> {
  RetryWhenBuilder(
      {Key key,
      T initialData,
      @required RetryWhenFactory retryWhenFactory,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.retryWhen(streamFactory, retryWhenFactory),
            builder: builder);
}
