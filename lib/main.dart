import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoList(),
    );
  }
}

class DemoList extends StatefulWidget {
  @override
  DemoListState createState() => new DemoListState();
}

class DemoListState extends State<DemoList> {
  static TextStyle bold24Roboto = TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w900,
  );

  final _list = [
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#styling-and-aligning-text
      'name': 'Styling and aligning text',
      'widget': Container(
        child: Text(
          "Lorem ipsum",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w900,
            fontFamily: "Georgia",
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#setting-background-color
      'name': 'Setting background color',
      'widget': Container(
        // grey box
        child: Text(
          "Lorem ipsum",
          style: bold24Roboto,
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#centering-components
      'name': 'Centering components',
      'widget': Container(
        // grey box
        child: Center(
          child: Text(
            "Lorem ipsum",
            style: bold24Roboto,
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#setting-container-width
      'name': 'Setting container width',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
            padding: EdgeInsets.all(16.0),
            width: 240.0, //max-width is 240.0
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#setting-absolute-position
      'name': 'Setting absolute position',
      'widget': Container(
        // grey box
        child: Stack(
          children: [
            Positioned(
              // red box
              child: Container(
                child: Text(
                  "Lorem ipsum",
                  style: bold24Roboto,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                ),
                padding: EdgeInsets.all(16.0),
              ),
              left: 24.0,
              top: 24.0,
            ),
          ],
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#rotating-components
      'name': 'Rotating components',
      'widget': Container(
        // gray box
        child: Center(
          child: Transform(
            child: Container(
              // red box
              child: Text(
                "Lorem ipsum",
                style: bold24Roboto,
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
              padding: EdgeInsets.all(16.0),
            ),
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#scaling-components
      'name': 'Scaling components',
      'widget': Container(
        // gray box
        child: Center(
          child: Transform(
            child: Container(
              // red box
              child: Text(
                "Lorem ipsum",
                style: bold24Roboto,
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
              padding: EdgeInsets.all(16.0),
            ),
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(1.5),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#vertical-gradient
      'name': 'Vertical Gradient',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.0, -1.0),
                end: const Alignment(0.0, 0.6),
                colors: <Color>[
                  const Color(0xffef5350),
                  const Color(0x00ef5350)
                ],
              ),
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#horizontal-gradient
      'name': 'Horizontal gradient',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(-1.0, 0.0),
                end: const Alignment(0.6, 0.0),
                colors: <Color>[
                  const Color(0xffef5350),
                  const Color(0x00ef5350)
                ],
              ),
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#rounding-corners
      'name': 'Rounding corners',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red circle
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.all(
                const Radius.circular(8.0),
              ),
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#adding-box-shadows
      'name': 'Adding box shadows',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: const Color(0xcc000000),
                  offset: Offset(0.0, 2.0),
                  blurRadius: 4.0,
                ),
                BoxShadow(
                  color: const Color(0x80000000),
                  offset: Offset(0.0, 6.0),
                  blurRadius: 20.0,
                ),
              ],
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        margin: EdgeInsets.only(bottom: 16.0),
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#making-circles-and-ellipses
      'name': 'Making circles and ellipses',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red circle
            child: Text(
              "Lorem ipsum",
              style: bold24Roboto,
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(16.0),
            width: 160.0,
            height: 160.0,
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#adjusting-text-spacing
      'name': 'Adjusting text spacing',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 4.0,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#making-inline-formatting-changes
      'name': 'Making inline formatting changes',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: RichText(
              text: TextSpan(
                style: bold24Roboto,
                children: <TextSpan>[
                  TextSpan(text: "Lorem "),
                  TextSpan(
                    text: "ipsum",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 48.0,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    },
    {
      // https://flutter.io/docs/get-started/flutter-for/web-devs#creating-text-excerpts
      'name': 'Creating text excerpts',
      'widget': Container(
        // grey box
        child: Center(
          child: Container(
            // red box
            child: Text(
              "Lorem ipsum dolor sit amet, consec etur",
              style: bold24Roboto,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
            padding: EdgeInsets.all(16.0),
          ),
        ),
        width: 320.0,
        height: 240.0,
        color: Colors.grey[300],
      )
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter fro web devs'),
      ),
      body: _buildDemoList(),
    );
  }

  Widget _buildDemoList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i < _list.length) {
          return _buildRow(_list[i]);
        }
      },
    );
  }

  Widget _buildRow(item) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            item['name'],
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Demo(item['name'], item['widget']);
            }));
          },
        ),
        Divider()
      ],
    );
  }
}

class Demo extends StatelessWidget {
  final String title;
  final StatelessWidget body;

  Demo(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: this.body,
    );
  }
}
