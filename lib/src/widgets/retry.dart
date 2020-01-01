import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.retry] using a streamFactory.
///
/// If the retry count is not specified, it retries indefinitely. If the retry
/// count is met, but the [Stream] has not terminated successfully, a
/// [RetryError] will be thrown. The [RetryError] will contain all of the Errors
/// and StackTraces that caused the failure.
///
/// Should the retry fail through with a [RetryError], then [retryErrorBuilder]
/// will be invoked to create the Widget instead.
///
/// {@tool sample}
///
/// This simplified sample shows a [RetryBuilder] that always throws
/// on the [Stream] created by streamFactory, effectively always
/// falling back to [retryErrorBuilder] to build the Widget.
///
/// ```dart
/// RetryBuilder(
///   count: 3,
///   streamFactory: () => Stream<void>.error(Error()),
///   builder: (context, AsyncSnapshot<void> snapshot) => Text('OK'),
///   retryErrorBuilder: (context, AsyncSnapshot<void> snapshot) => Text('Oops!'),
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.retry].
class RetryBuilder<T> extends StreamBuilder<T> {
  @protected
  final AsyncWidgetBuilder<T> retryErrorBuilder;

  /// Creates a special [StreamBuilder] using [Rx.retry] to build a
  /// [Stream] using [streamFactory].
  ///
  /// Should the retry fail through with a [RetryError], then [retryErrorBuilder]
  /// will be invoked to create the Widget instead.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.retryWhen].
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
