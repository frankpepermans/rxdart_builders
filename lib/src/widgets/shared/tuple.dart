class Tuple2<A, B> {
  final A item1;
  final B item2;

  const Tuple2(this.item1, this.item2);

  @override
  String toString() => 'tuple2: [$item1, $item2]';
}

class Tuple3<A, B, C> {
  final A item1;
  final B item2;
  final C item3;

  const Tuple3(this.item1, this.item2, this.item3);

  @override
  String toString() => 'tuple3: [$item1, $item2, $item3]';
}

class Tuple4<A, B, C, D> {
  final A item1;
  final B item2;
  final C item3;
  final D item4;

  const Tuple4(this.item1, this.item2, this.item3, this.item4);

  @override
  String toString() => 'tuple4: [$item1, $item2, $item3, $item4]';
}
