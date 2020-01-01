import 'package:flutter/widgets.dart';
import 'package:rxdart_builders/src/widgets/combine_latest.dart';
import 'package:rxdart_builders/src/widgets/fork_join.dart';
import 'package:rxdart_builders/src/widgets/zip.dart';

typedef StreamFactory0<T> = Stream<T> Function();

typedef StreamFactory1<S, T> = Stream<T> Function(S);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest2Builder], [Zip2Builder], [ForkJoin2Builder] which
///    delegate to an [AsyncWidget2Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget2Builder<A, B> = Widget Function(BuildContext context,
    AsyncSnapshot<A> snapshotA, AsyncSnapshot<B> snapshotB);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest3Builder], [Zip3Builder], [ForkJoin3Builder] which
///    delegate to an [AsyncWidget3Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget3Builder<A, B, C> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest4Builder], [Zip4Builder], [ForkJoin4Builder] which
///    delegate to an [AsyncWidget4Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget4Builder<A, B, C, D> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest5Builder], [Zip5Builder], [ForkJoin5Builder] which
///    delegate to an [AsyncWidget5Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget5Builder<A, B, C, D, E> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD,
    AsyncSnapshot<E> snapshotE);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest6Builder], [Zip6Builder], [ForkJoin6Builder] which
///    delegate to an [AsyncWidget6Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget6Builder<A, B, C, D, E, F> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD,
    AsyncSnapshot<E> snapshotE,
    AsyncSnapshot<F> snapshotF);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest7Builder], [Zip7Builder], [ForkJoin7Builder] which
///    delegate to an [AsyncWidget7Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget7Builder<A, B, C, D, E, F, G> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD,
    AsyncSnapshot<E> snapshotE,
    AsyncSnapshot<F> snapshotF,
    AsyncSnapshot<G> snapshotG);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest8Builder], [Zip8Builder], [ForkJoin8Builder] which
///    delegate to an [AsyncWidget8Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget8Builder<A, B, C, D, E, F, G, H> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD,
    AsyncSnapshot<E> snapshotE,
    AsyncSnapshot<F> snapshotF,
    AsyncSnapshot<G> snapshotG,
    AsyncSnapshot<H> snapshotH);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest9Builder], [Zip9Builder], [ForkJoin9Builder] which
///    delegate to an [AsyncWidget9Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget9Builder<A, B, C, D, E, F, G, H, I> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD,
    AsyncSnapshot<E> snapshotE,
    AsyncSnapshot<F> snapshotF,
    AsyncSnapshot<G> snapshotG,
    AsyncSnapshot<H> snapshotH,
    AsyncSnapshot<I> snapshotI);
