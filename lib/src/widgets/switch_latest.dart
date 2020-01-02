import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.switchLatest].
///
/// Converts a [Stream] that emits [Stream]s (aka a 'Higher Order Stream') into a
/// single [Stream] that emits the items emitted by the most-recently-emitted of
/// those [Stream]s.
///
/// This [Stream] will unsubscribe from the previously-emitted [Stream] when
/// a new [Stream] is emitted from the source [Stream] and subscribe to the new
/// [Stream].
///
/// {@tool sample}
///
/// This simplified sample shows a [SwitchLatestBuilder] which build the Widget
/// from the [Stream] events..
///
/// ```dart
/// SwitchLatestBuilder(
///   streams: Stream.fromIterable([
///     Rx.timer('A', Duration(seconds: 2)),
///     Rx.timer('B', Duration(seconds: 1)),
///     Stream.value('C'),
///   ]),
///   builder: (context, AsyncSnapshot<String> snapshot) => Text(snapshot.data),
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.switchLatest].
class SwitchLatestBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.switchLatest] to build a
  /// [Stream] from multiple incoming [streams].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.switchLatest].
  SwitchLatestBuilder(
      {Key key,
      T initialData,
      bool reusable = false,
      @required Stream<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.switchLatest(streams),
            builder: builder);
}
