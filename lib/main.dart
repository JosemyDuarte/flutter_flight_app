import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(
          title: "Flight Booking",
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(bottom: 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/map.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CityName("NYC", "New York City"),
                          Divider(
                            color: Colors.red,
                            thickness: 30,
                            height: 20,
                          ),
                          Text(
                            "John F. Kennedy",
                            style: Theme.of(context).textTheme.body1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 10),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Airport",
                            style: Theme.of(context).textTheme.body1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 10),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CityName("SFO", "San Fransisco"),
                          Divider(
                            color: Colors.red,
                            thickness: 30,
                            height: 20,
                          ),
                          Text(
                            "San Fransisco",
                            style: Theme.of(context).textTheme.body1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 10),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CityName extends StatelessWidget {
  final String _short;
  final String _long;

  const CityName(
    this._short,
    this._long, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _short,
            style: Theme.of(context).textTheme.title.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32),
            textAlign: TextAlign.left,
          ),
          Text(
            _long,
            style: Theme.of(context).textTheme.body1.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 10),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
