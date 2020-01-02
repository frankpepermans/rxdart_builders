import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.concat] and concatenates all of the
/// specified stream sequences, as long as the previous stream sequence
/// terminated successfully.
///
/// It does this by subscribing to each stream one by one, emitting all items
/// and completing before subscribing to the next stream.
///
/// {@tool sample}
///
/// This simplified sample shows a [ConcatBuilder] which build the Widget
/// from the [Stream] events. The order of events is defined by the
/// index in the streams List.
///
/// ```dart
/// ConcatBuilder(
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
///  * [Rx.concat].
class ConcatBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.concat] to build a
  /// [Stream] from multiple incoming [streams].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.concat].
  ConcatBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.concat(streams),
            builder: builder);
}
