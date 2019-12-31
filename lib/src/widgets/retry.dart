import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

class RetryBuilder<T> extends StreamBuilder<T> {
  @protected
  final AsyncWidgetBuilder<T> retryErrorBuilder;

  RetryBuilder(
      {Key key,
      T initialData,
      int count,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder,
      this.retryErrorBuilder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.retry(streamFactory, count),
            builder: builder);

  @override
  Widget build(BuildContext context, AsyncSnapshot<T> currentSummary) {
    if (currentSummary.hasError &&
        retryErrorBuilder != null &&
        currentSummary.error is RetryError) {
      return retryErrorBuilder(context, currentSummary);
    }

    return super.build(context, currentSummary);
  }
}
