import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.race], it waits for the very first event
/// from one of the incoming [Stream]s and when that is received, cancels
/// all subscriptions to [Stream]s which haven't fired yet,
/// continuing to emit only events from the one remaining [Stream].
///
/// {@tool sample}
///
/// This simplified sample shows a [RaceBuilder] which build the Widget
/// from the [Stream] events. Only the [Stream] which emitted the first
/// item chronologically will be kept for further listening.
///
/// ```dart
/// RaceBuilder(
///   streams: [
///     Rx.timer(1, const Duration(days: 1)),
///     Rx.timer(2, const Duration(seconds: 1))
///   ],
///   builder: (context, AsyncSnapshot<int> snapshot) => Text('${snapshot.data}'),
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.race].
class RaceBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.race] to build a
  /// [Stream] from multiple incoming [streams].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.race].
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
