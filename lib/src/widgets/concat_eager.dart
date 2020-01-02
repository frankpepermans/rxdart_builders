import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.concatEager] and concatenates all of the
/// specified stream sequences, as long as the previous stream sequence
/// terminated successfully.
///
/// It does this by subscribing to all streams at the same time, then sequentially
/// emitting all events from those streams based on their index in the List.
///
/// {@tool sample}
///
/// This simplified sample shows a [ConcatEagerBuilder] which build the Widget
/// from the [Stream] events. The order of events is defined by the
/// index in the streams List.
///
/// ```dart
/// ConcatEagerBuilder(
///   streams: [Stream.value(1), Rx.timer(2, Duration(days: 1)), Stream.value(3)],
///   builder: (context, AsyncSnapshot<int> snapshot) =>
///       Text('${snapshot.data}'), // '1', '2', '3'
///   initialData: null,
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.concatEager].
class ConcatEagerBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.concatEager] to build a
  /// [Stream] from multiple incoming [streams].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.concatEager].
  ConcatEagerBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.concatEager(streams),
            builder: builder);
}
