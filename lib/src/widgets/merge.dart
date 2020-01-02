import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.merge] and effectively delegates all
/// incoming events to a single [Stream].
///
/// {@tool sample}
///
/// This simplified sample shows a [MergeBuilder] which build the Widget
/// from the [Stream] events. All individual events from all provided [Stream]s
/// are passed to a single [Stream].
///
/// ```dart
/// MergeBuilder(
///   streams: [Rx.range(0, 5), Rx.range(6, 10)],
///   builder: (context, AsyncSnapshot<int> snapshot) => Text('${snapshot.data}'),
///   initialData: -1,
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.merge].
class MergeBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.merge] to build a
  /// [Stream] from multiple incoming [streams].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.merge].
  MergeBuilder(
      {Key key,
      T initialData,
      @required List<Stream<T>> streams,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.merge(streams),
            builder: builder);
}
