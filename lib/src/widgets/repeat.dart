import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.repeat], uses a streamFactory to
/// create a [Stream] and when it completes, repeats this process for
/// the specified count amount of times.
///
/// {@tool sample}
///
/// This simplified sample shows a [RepeatBuilder] which build the Widget
/// from the [Stream] events. It emits the number sequence 3 times.
///
/// If that count is not specified, it repeats indefinitely.
///
/// ```dart
/// RepeatBuilder(
///   streamFactory: (currentCount) => Stream.fromIterable([1, 2, 3]),
///   builder: (context, AsyncSnapshot<int> snapshot) => Text('${snapshot.data}'),
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.repeat].
class RepeatBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.repeat] to build a
  /// [Stream] using a [streamFactory].
  /// This process is repeated for [count] amount of times.
  ///
  /// If [count] is not specified, it repeats indefinitely.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.repeat].
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
