import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/src/widgets/shared/async.dart';
import 'package:rxdart_builders/src/widgets/shared/tuple.dart';

class Zip2Builder<A, B> extends StreamBuilder<Tuple2<A, B>> {
  Zip2Builder(
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
            stream: Rx.zip2(streamA, streamB, (A a, B b) => Tuple2(a, b)),
            builder:
                (BuildContext context, AsyncSnapshot<Tuple2<A, B>> snapshot) =>
                    builder(
                        context,
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item1),
                        AsyncSnapshot.withData(
                            snapshot.connectionState, snapshot.data?.item2)));
}

class Zip3Builder<A, B, C> extends StreamBuilder<Tuple3<A, B, C>> {
  Zip3Builder(
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
            stream: Rx.zip3(
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

class Zip4Builder<A, B, C, D> extends StreamBuilder<Tuple4<A, B, C, D>> {
  Zip4Builder(
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
            stream: Rx.zip4(streamA, streamB, streamC, streamD,
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

class Zip5Builder<A, B, C, D, E> extends StreamBuilder<Tuple5<A, B, C, D, E>> {
  Zip5Builder(
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
            stream: Rx.zip5(streamA, streamB, streamC, streamD, streamE,
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

class Zip6Builder<A, B, C, D, E, F>
    extends StreamBuilder<Tuple6<A, B, C, D, E, F>> {
  Zip6Builder(
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
            stream: Rx.zip6(
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

class Zip7Builder<A, B, C, D, E, F, G>
    extends StreamBuilder<Tuple7<A, B, C, D, E, F, G>> {
  Zip7Builder(
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
            stream: Rx.zip7(
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

class Zip8Builder<A, B, C, D, E, F, G, H>
    extends StreamBuilder<Tuple8<A, B, C, D, E, F, G, H>> {
  Zip8Builder(
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
            stream: Rx.zip8(
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

class Zip9Builder<A, B, C, D, E, F, G, H, I>
    extends StreamBuilder<Tuple9<A, B, C, D, E, F, G, H, I>> {
  Zip9Builder(
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
            stream: Rx.zip9(
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
