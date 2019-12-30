import 'package:flutter/widgets.dart';

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest2Builder], which delegates to an [AsyncWidget2Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget2Builder<A, B> = Widget Function(BuildContext context,
    AsyncSnapshot<A> snapshotA, AsyncSnapshot<B> snapshotB);

/// Signature for strategies that build widgets based on asynchronous
/// interaction.
///
/// See also:
///
///  * [CombineLatest3Builder], which delegates to an [AsyncWidget3Builder] to build
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
///  * [CombineLatest4Builder], which delegates to an [AsyncWidget4Builder] to build
///    itself based on a snapshot from interacting with multiple [Stream]s.
typedef AsyncWidget4Builder<A, B, C, D> = Widget Function(
    BuildContext context,
    AsyncSnapshot<A> snapshotA,
    AsyncSnapshot<B> snapshotB,
    AsyncSnapshot<C> snapshotC,
    AsyncSnapshot<D> snapshotD);
