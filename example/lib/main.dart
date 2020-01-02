import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_builders/rxdart_builders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PublishSubject<bool> _onPressed = PublishSubject<bool>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Can you press the right button?'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                child: Text('Don\'t press me!'),
                onPressed: () => _onPressed.addError(Error()),
              ),
              FlatButton(
                child: Text('Don\'t press me!'),
                onPressed: () => _onPressed.addError(Error()),
              ),
              FlatButton(
                child: Text('Press me!'),
                onPressed: () => _onPressed.add(true),
              )
            ],
          ),
          Expanded(
            child: Center(
              child: RetryBuilder(
                streamFactory: () => _onPressed.take(1),
                initialData: false,
                count: 2,
                builder: (context, AsyncSnapshot<bool> snapshot) {
                  if (!snapshot.data) {
                    return Text('Press a button!');
                  }

                  return Text('Yay! You\'ve pressed the right button!');
                },
                retryErrorBuilder: (context, AsyncSnapshot<bool> snapshot) => Text(
                    'Oh my, you\'ve failed to press the correct button after 3 attempts :('),
              ),
            ),
          )
        ],
      ),
    );
  }
}
