import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.defer] and uses a streamFactory
/// to create the [Stream] whenever it is listened to.
///
/// In some circumstances, waiting until the last minute (that is, until
/// subscription time) to generate the [Stream] can ensure that this
/// [Stream] contains the freshest data.
///
/// {@tool sample}
///
/// This simplified sample shows a [DeferBuilder] which build the Widget
/// from the [Stream] events. The order of events is defined by the
/// index in the streams List.
///
/// ```dart
/// DeferBuilder(
///   streamFactory: () async* {
///     yield 'I was built at ${DateTime.now()}'!;
///   },
///   builder: (context, AsyncSnapshot<String> snapshot) => Text(snapshot.data),
///   initialData: 'A DeferStream says hi!',
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.defer].
class DeferBuilder<T> extends StreamBuilder<T> {
  /// Creates a special [StreamBuilder] using [Rx.defer] to build a
  /// [Stream].
  ///
  /// At subscription time, [streamFactory] is invoked, which should
  /// return the [Stream] that will be used to drive the [builder].
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.defer].
  DeferBuilder(
      {Key key,
      T initialData,
      bool reusable = false,
      @required StreamFactory0<T> streamFactory,
      @required AsyncWidgetBuilder<T> builder})
      : super(
            key: key,
            initialData: initialData,
            stream: Rx.defer(streamFactory, reusable: reusable),
            builder: builder);
}
