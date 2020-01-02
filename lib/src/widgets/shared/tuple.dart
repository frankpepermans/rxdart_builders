import 'package:rxdart_builders/src/widgets/combine_latest.dart';
import 'package:rxdart_builders/src/widgets/fork_join.dart';
import 'package:rxdart_builders/src/widgets/zip.dart';

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest2Builder].
///  * [ForkJoin2Builder].
///  * [Zip2Builder].
class Tuple2<A, B> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Creates a [Tuple2] holding multiple events.
  const Tuple2(this.item1, this.item2);

  @override
  String toString() => 'tuple2: [$item1, $item2]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest3Builder].
///  * [ForkJoin3Builder].
///  * [Zip3Builder].
class Tuple3<A, B, C> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Creates a [Tuple3] holding multiple events.
  const Tuple3(this.item1, this.item2, this.item3);

  @override
  String toString() => 'tuple3: [$item1, $item2, $item3]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest4Builder].
///  * [ForkJoin4Builder].
///  * [Zip4Builder].
class Tuple4<A, B, C, D> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Creates a [Tuple4] holding multiple events.
  const Tuple4(this.item1, this.item2, this.item3, this.item4);

  @override
  String toString() => 'tuple4: [$item1, $item2, $item3, $item4]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest5Builder].
///  * [ForkJoin5Builder].
///  * [Zip5Builder].
class Tuple5<A, B, C, D, E> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Reference to the fifth bundled event.
  final E item5;

  /// Creates a [Tuple5] holding multiple events.
  const Tuple5(this.item1, this.item2, this.item3, this.item4, this.item5);

  @override
  String toString() => 'tuple5: [$item1, $item2, $item3, $item4, $item5]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest6Builder].
///  * [ForkJoin6Builder].
///  * [Zip6Builder].
class Tuple6<A, B, C, D, E, F> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Reference to the fifth bundled event.
  final E item5;

  /// Reference to the sixth bundled event.
  final F item6;

  /// Creates a [Tuple6] holding multiple events.
  const Tuple6(
      this.item1, this.item2, this.item3, this.item4, this.item5, this.item6);

  @override
  String toString() =>
      'tuple6: [$item1, $item2, $item3, $item4, $item5, $item6]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest7Builder].
///  * [ForkJoin7Builder].
///  * [Zip7Builder].
class Tuple7<A, B, C, D, E, F, G> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Reference to the fifth bundled event.
  final E item5;

  /// Reference to the sixth bundled event.
  final F item6;

  /// Reference to the seventh bundled event.
  final G item7;

  /// Creates a [Tuple7] holding multiple events.
  const Tuple7(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7);

  @override
  String toString() =>
      'tuple7: [$item1, $item2, $item3, $item4, $item5, $item6, $item7]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest8Builder].
///  * [ForkJoin8Builder].
///  * [Zip8Builder].
class Tuple8<A, B, C, D, E, F, G, H> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Reference to the fifth bundled event.
  final E item5;

  /// Reference to the sixth bundled event.
  final F item6;

  /// Reference to the seventh bundled event.
  final G item7;

  /// Reference to the eighth bundled event.
  final H item8;

  /// Creates a [Tuple8] holding multiple events.
  const Tuple8(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8);

  @override
  String toString() =>
      'tuple8: [$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8]';
}

/// A simple container class, used in rxdart_builders to
/// bundle events into a single Object whenever a combine handler
/// is required.
///
/// See also:
///
///  * [CombineLatest9Builder].
///  * [ForkJoin9Builder].
///  * [Zip9Builder].
class Tuple9<A, B, C, D, E, F, G, H, I> {
  /// Reference to the first bundled event.
  final A item1;

  /// Reference to the second bundled event.
  final B item2;

  /// Reference to the third bundled event.
  final C item3;

  /// Reference to the fourth bundled event.
  final D item4;

  /// Reference to the fifth bundled event.
  final E item5;

  /// Reference to the sixth bundled event.
  final F item6;

  /// Reference to the seventh bundled event.
  final G item7;

  /// Reference to the eighth bundled event.
  final H item8;

  /// Reference to the ninth bundled event.
  final I item9;

  /// Creates a [Tuple9] holding multiple events.
  const Tuple9(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8, this.item9);

  @override
  String toString() =>
      'tuple9: [$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8, $item9]';
}
