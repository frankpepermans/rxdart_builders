import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

/// Signature for the retryWhenFactory parameter for [RetryWhenBuilder].
typedef RetryWhenFactory = Stream<void> Function(
    dynamic error, StackTrace stack);

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.retryWhen] using a streamFactory.
///
/// If the retryWhenFactory emits an error a [RetryError] will be
/// thrown. The [RetryError] will contain all of the [Error]s and
/// [StackTrace]s that caused the failure.
///
/// Should the retry fail through with a [RetryError], then [retryErrorBuilder]
/// will be invoked to create the Widget instead.
///
/// {@tool sample}
///
/// This simplified sample shows a [RetryWhenBuilder] that both throws
/// on the [Stream] created by streamFactory, as well as the [Stream] created
/// by retryWhenFactory, effectively always falling back to [retryErrorBuilder]
/// to build the Widget.
///
/// ```dart
/// RetryWhenBuilder(
///   streamFactory: () => Stream<void>.error(Error()),
///   builder: (context, AsyncSnapshot<void> snapshot) => Text('OK'),
///   retryErrorBuilder: (context, AsyncSnapshot<void> snapshot) => Text('Oops!'),
///   retryWhenFactory: (e, s) {
///     // we'll just keep on throwing
///     return Stream<void>.error(Error());
///   },
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.retryWhen].
class RetryWhenBuilder<T> extends StreamBuilder<T> {
  /// The build strategy used when the retry fails with a [RetryError].
  final AsyncWidgetBuilder<T> retryErrorBuilder;

  /// Creates a special [StreamBuilder] using [Rx.retryWhen] to build a
  /// [Stream] using [streamFactory].
  ///
  /// Should the retry fail through with a [RetryError], then [retryErrorBuilder]
  /// will be invoked to create the Widget instead.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.retryWhen].
  RetryWhenBuilder(
      {Key key,
      T initialData,
      @required RetryWhenFactory retryWhenFactory,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder,
      this.retryErrorBuilder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.retryWhen(streamFactory, retryWhenFactory),
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
