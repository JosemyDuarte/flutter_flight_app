import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(
          title: "Booking",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  color: const Color(0xff06255D),
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/map.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Airport",
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Transform.rotate(
                      angle: 90 * 3.141516 / 180,
                      child: Icon(
                        Icons.airplanemode_active,
                        color: Colors.red,
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
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Intl Airport",
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: TextFormField(
                                  style:
                                      TextStyle(color: const Color(0xff4F74B2)),
                                  decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                          color: const Color(0xff06255D)),
                                      labelText: 'Passenger'),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: TextFormField(
                                  style:
                                      TextStyle(color: const Color(0xff4F74B2)),
                                  decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                          color: const Color(0xff06255D)),
                                      labelText: 'Date'),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                PassengersInput("AD"),
                                PassengersInput("CH"),
                                PassengersInput("IN"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'Airlines'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'Class'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'Owner'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.28,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'CVV'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'Card Number'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.28,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: TextFormField(
                              style: TextStyle(color: const Color(0xff4F74B2)),
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: const Color(0xff06255D)),
                                  labelText: 'Expiration',
                                  hintText: "Month / Year"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Price ",
                      style: Theme.of(context).textTheme.body1.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: Text(
                        "\$",
                        style: Theme.of(context).textTheme.body1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      "75,35",
                      style: Theme.of(context).textTheme.body1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 40),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    FlatButton(
                        onPressed: () {},
                        color: Colors.green,
                        textColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 15, bottom: 15),
                          child: Text(
                            "Continue",
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(color: Colors.white, fontSize: 20),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassengersInput extends StatelessWidget {
  final String _title;

  const PassengersInput(
    this._title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new RawMaterialButton(
              onPressed: () {},
              child: Text(
                _title,
                style: Theme.of(context).textTheme.body1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                    fontSize: 16),
              ),
              shape: new CircleBorder(),
              elevation: 0,
              fillColor: Colors.blue[100],
              padding: const EdgeInsets.all(10.0),
              constraints:
                  const BoxConstraints(minWidth: 70.0, minHeight: 40.0)),
          Container(
            width: MediaQuery.of(context).size.width * 0.10,
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              decoration: InputDecoration(),
            ),
          ),
        ],
      ),
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
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40),
            textAlign: TextAlign.left,
          ),
          Text(
            _long,
            style: Theme.of(context).textTheme.body1.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 14),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
