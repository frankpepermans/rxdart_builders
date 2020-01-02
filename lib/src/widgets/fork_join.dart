import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';
import 'package:rxdart_builders/src/widgets/shared/tuple.dart';

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin2].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin2].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin2Builder] which combines 2 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin2Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB) =>
///           Text('${snapshotA.data}, ${snapshotB.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin2].
class ForkJoin2Builder<A, B> extends StreamBuilder<Tuple2<A, B>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin2] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin2].
  ForkJoin2Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required AsyncWidget2Builder<A, B> builder})
      : super(
            key: key,
            initialData: (initialDataA != null || initialDataB != null)
                ? Tuple2(initialDataA, initialDataB)
                : null,
            stream: Rx.forkJoin2(streamA, streamB, (A a, B b) => Tuple2(a, b)),
            builder:
                (BuildContext context, AsyncSnapshot<Tuple2<A, B>> snapshot) =>
                    builder(
                        context,
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item1),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item2)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin3].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin3].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin3Builder] which combines 3 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin3Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin3].
class ForkJoin3Builder<A, B, C> extends StreamBuilder<Tuple3<A, B, C>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin3] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin3].
  ForkJoin3Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required AsyncWidget3Builder<A, B, C> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null)
                ? Tuple3(initialDataA, initialDataB, initialDataC)
                : null,
            stream: Rx.forkJoin3(
                streamA, streamB, streamC, (A a, B b, C c) => Tuple3(a, b, c)),
            builder: (BuildContext context,
                    AsyncSnapshot<Tuple3<A, B, C>> snapshot) =>
                builder(
                    context,
                    AsyncSnapshot.withData(
                        snapshot.connectionState, snapshot.data?.item1),
                    AsyncSnapshot.withData(
                        snapshot.connectionState, snapshot.data?.item2),
                    AsyncSnapshot.withData(
                        snapshot.connectionState, snapshot.data?.item3)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin4].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin4].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin4Builder] which combines 4 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin4Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin4].
class ForkJoin4Builder<A, B, C, D> extends StreamBuilder<Tuple4<A, B, C, D>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin4] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin4].
  ForkJoin4Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required AsyncWidget4Builder<A, B, C, D> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null ||
                    initialDataD != null)
                ? Tuple4(initialDataA, initialDataB, initialDataC, initialDataD)
                : null,
            stream: Rx.forkJoin4(streamA, streamB, streamC, streamD,
                (A a, B b, C c, D d) => Tuple4(a, b, c, d)),
            builder:
                (BuildContext context, AsyncSnapshot<Tuple4<A, B, C, D>> snapshot) =>
                    builder(
                        context,
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item1),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item2),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item3),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item4)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin5].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin5].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin5Builder] which combines 5 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin5Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamE: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   initialDataE: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD,
///        AsyncSnapshot<int> snapshotE) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}, ${snapshotE.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin5].
class ForkJoin5Builder<A, B, C, D, E>
    extends StreamBuilder<Tuple5<A, B, C, D, E>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin5] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin5].
  ForkJoin5Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      E initialDataE,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required Stream<E> streamE,
      @required AsyncWidget5Builder<A, B, C, D, E> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null ||
                    initialDataD != null ||
                    initialDataE != null)
                ? Tuple5(initialDataA, initialDataB, initialDataC, initialDataD,
                    initialDataE)
                : null,
            stream: Rx.forkJoin5(streamA, streamB, streamC, streamD, streamE,
                (A a, B b, C c, D d, E e) => Tuple5(a, b, c, d, e)),
            builder: (BuildContext context, AsyncSnapshot<Tuple5<A, B, C, D, E>> snapshot) => builder(
                context,
                AsyncSnapshot.withData(
                    snapshot.connectionState, snapshot.data?.item1),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item2),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item3),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item4),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item5)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin6].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin6].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin6Builder] which combines 6 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin6Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamE: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamF: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   initialDataE: -1,
///   initialDataF: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD,
///        AsyncSnapshot<int> snapshotE, AsyncSnapshot<int> snapshotF) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}, ${snapshotE.data}, ${snapshotF.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin6].
class ForkJoin6Builder<A, B, C, D, E, F>
    extends StreamBuilder<Tuple6<A, B, C, D, E, F>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin6] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin6].
  ForkJoin6Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      E initialDataE,
      F initialDataF,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required Stream<E> streamE,
      @required Stream<F> streamF,
      @required AsyncWidget6Builder<A, B, C, D, E, F> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null ||
                    initialDataD != null ||
                    initialDataE != null ||
                    initialDataF != null)
                ? Tuple6(initialDataA, initialDataB, initialDataC, initialDataD,
                    initialDataE, initialDataF)
                : null,
            stream: Rx.forkJoin6(
                streamA,
                streamB,
                streamC,
                streamD,
                streamE,
                streamF,
                (A a, B b, C c, D d, E e, F f) => Tuple6(a, b, c, d, e, f)),
            builder: (BuildContext context, AsyncSnapshot<Tuple6<A, B, C, D, E, F>> snapshot) => builder(
                context,
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item1),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item2),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item3),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item4),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item5),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item6)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin7].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin7].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin7Builder] which combines 7 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin7Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamE: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamF: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamG: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   initialDataE: -1,
///   initialDataF: -1,
///   initialDataG: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD,
///        AsyncSnapshot<int> snapshotE, AsyncSnapshot<int> snapshotF,
///        AsyncSnapshot<int> snapshotG) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}, ${snapshotE.data}, ${snapshotF.data}, ${snapshotG.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin7].
class ForkJoin7Builder<A, B, C, D, E, F, G>
    extends StreamBuilder<Tuple7<A, B, C, D, E, F, G>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin7] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin7].
  ForkJoin7Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      E initialDataE,
      F initialDataF,
      G initialDataG,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required Stream<E> streamE,
      @required Stream<F> streamF,
      @required Stream<G> streamG,
      @required AsyncWidget7Builder<A, B, C, D, E, F, G> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null ||
                    initialDataD != null ||
                    initialDataE != null ||
                    initialDataF != null ||
                    initialDataG != null)
                ? Tuple7(
                    initialDataA, initialDataB, initialDataC, initialDataD, initialDataE, initialDataF, initialDataG)
                : null,
            stream: Rx.forkJoin7(
                streamA,
                streamB,
                streamC,
                streamD,
                streamE,
                streamF,
                streamG,
                (A a, B b, C c, D d, E e, F f, G g) =>
                    Tuple7(a, b, c, d, e, f, g)),
            builder: (BuildContext context, AsyncSnapshot<Tuple7<A, B, C, D, E, F, G>> snapshot) => builder(
                context,
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item1),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item2),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item3),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item4),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item5),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item6),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item7)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin8].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin8].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin8Builder] which combines 8 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin8Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamE: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamF: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamG: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamH: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   initialDataE: -1,
///   initialDataF: -1,
///   initialDataG: -1,
///   initialDataH: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD,
///        AsyncSnapshot<int> snapshotE, AsyncSnapshot<int> snapshotF,
///        AsyncSnapshot<int> snapshotG, AsyncSnapshot<int> snapshotH) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}, ${snapshotE.data}, ${snapshotF.data}, ${snapshotG.data}, ${snapshotH.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin8].
class ForkJoin8Builder<A, B, C, D, E, F, G, H>
    extends StreamBuilder<Tuple8<A, B, C, D, E, F, G, H>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin8] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin8].
  ForkJoin8Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      E initialDataE,
      F initialDataF,
      G initialDataG,
      H initialDataH,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required Stream<E> streamE,
      @required Stream<F> streamF,
      @required Stream<G> streamG,
      @required Stream<H> streamH,
      @required AsyncWidget8Builder<A, B, C, D, E, F, G, H> builder})
      : super(
            key: key,
            initialData: (initialDataA != null || initialDataB != null || initialDataC != null || initialDataD != null || initialDataE != null || initialDataF != null || initialDataG != null || initialDataH != null)
                ? Tuple8(
                    initialDataA, initialDataB, initialDataC, initialDataD, initialDataE, initialDataF, initialDataG, initialDataH)
                : null,
            stream: Rx.forkJoin8(
                streamA,
                streamB,
                streamC,
                streamD,
                streamE,
                streamF,
                streamG,
                streamH,
                (A a, B b, C c, D d, E e, F f, G g, H h) =>
                    Tuple8(a, b, c, d, e, f, g, h)),
            builder: (BuildContext context, AsyncSnapshot<Tuple8<A, B, C, D, E, F, G, H>> snapshot) => builder(
                context,
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item1),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item2),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item3),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item4),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item5),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item6),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item7),
                AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item8)));
}

/// Widget that builds itself based on the latest snapshot of interaction with
/// a [Stream].
///
/// The [Stream] is created using [Rx.forkJoin9].
///
/// In the builder, you receive an [AsyncSnapshot] for each [Stream] provided.
/// Here, the connectionState is always equal for every individual [AsyncSnapshot]
/// and matches the connectionState of the [Stream] that was created by
/// [Rx.forkJoin9].
///
/// You can provide optional initialData for each provided [Stream].
/// If you supply at least one initialData, but not one for every [Stream],
/// then the missing optionalData will be defaulted to null, effectively
/// passing null as the data value of the respective [AsyncSnapshot]
/// instances in the builder.
///
/// {@tool sample}
///
/// Creates a [ForkJoin9Builder] which combines 9 periodic [Stream]s.
/// The resulting Widget is built upon any incoming event from the provided
/// [Stream]s, in the builder, the final values of those [Stream]s are passed.
///
/// ```dart
/// ForkJoin9Builder(
///   streamA: Stream.periodic(const Duration(seconds: 1), (i) => i).take(2),
///   streamB: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamC: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamD: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamE: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamF: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamG: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamH: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   streamI: Stream.periodic(const Duration(seconds: 2), (i) => i).take(2),
///   initialDataA: -1,
///   initialDataB: -1,
///   initialDataC: -1,
///   initialDataD: -1,
///   initialDataE: -1,
///   initialDataF: -1,
///   initialDataG: -1,
///   initialDataH: -1,
///   initialDataI: -1,
///   builder:
///       (context, AsyncSnapshot<int> snapshotA, AsyncSnapshot<int> snapshotB,
///        AsyncSnapshot<int> snapshotC, AsyncSnapshot<int> snapshotD,
///        AsyncSnapshot<int> snapshotE, AsyncSnapshot<int> snapshotF,
///        AsyncSnapshot<int> snapshotG, AsyncSnapshot<int> snapshotH,
///        AsyncSnapshot<int> snapshotI) =>
///           Text('${snapshotA.data}, ${snapshotB.data}, ${snapshotC.data}, ${snapshotD.data}, ${snapshotE.data}, ${snapshotF.data}, ${snapshotG.data}, ${snapshotH.data}, ${snapshotI.data}'), //
/// );
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [StreamBuilder].
///  * [Rx.forkJoin9].
class ForkJoin9Builder<A, B, C, D, E, F, G, H, I>
    extends StreamBuilder<Tuple9<A, B, C, D, E, F, G, H, I>> {
  /// Creates a special [StreamBuilder] using [Rx.forkJoin9] to build a
  /// [Stream] using multiple other [Stream]s.
  ///
  /// The [builder] will be invoked with the very last data from all
  /// provided [Stream]s.
  ///
  /// See also:
  ///
  ///  * [StreamBuilder].
  ///  * [Rx.forkJoin9].
  ForkJoin9Builder(
      {Key key,
      A initialDataA,
      B initialDataB,
      C initialDataC,
      D initialDataD,
      E initialDataE,
      F initialDataF,
      G initialDataG,
      H initialDataH,
      I initialDataI,
      @required Stream<A> streamA,
      @required Stream<B> streamB,
      @required Stream<C> streamC,
      @required Stream<D> streamD,
      @required Stream<E> streamE,
      @required Stream<F> streamF,
      @required Stream<G> streamG,
      @required Stream<H> streamH,
      @required Stream<I> streamI,
      @required AsyncWidget9Builder<A, B, C, D, E, F, G, H, I> builder})
      : super(
            key: key,
            initialData: (initialDataA != null ||
                    initialDataB != null ||
                    initialDataC != null ||
                    initialDataD != null ||
                    initialDataE != null ||
                    initialDataF != null ||
                    initialDataG != null ||
                    initialDataH != null ||
                    initialDataI != null)
                ? Tuple9(
                    initialDataA,
                    initialDataB,
                    initialDataC,
                    initialDataD,
                    initialDataE,
                    initialDataF,
                    initialDataG,
                    initialDataH,
                    initialDataI)
                : null,
            stream: Rx.forkJoin9(
                streamA,
                streamB,
                streamC,
                streamD,
                streamE,
                streamF,
                streamG,
                streamH,
                streamI,
                (A a, B b, C c, D d, E e, F f, G g, H h, I i) =>
                    Tuple9(a, b, c, d, e, f, g, h, i)),
            builder: (BuildContext context, AsyncSnapshot<Tuple9<A, B, C, D, E, F, G, H, I>> snapshot) =>
                builder(context, AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item1), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item2), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item3), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item4), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item5), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item6), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item7), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item8), AsyncSnapshot.withData(snapshot.connectionState, snapshot.data?.item9)));
}
