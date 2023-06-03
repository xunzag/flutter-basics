// CARDS

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: NewsfeedWidget(title: 'News Feed'),
//     );
//   }
// }

// class News {
//   DateTime dt;
//   String title;
//   String text;

//   News(this.dt, this.title, this.text);
// }

// class NewsCard extends StatelessWidget {
//   final News news;

//   NewsCard(this.news);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 20.0),
//       child: Card(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Image.network(
//                 "https://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1",
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
//                 child: Text(
//                   "${news.dt.month.toString().padLeft(2, '0')}/${news.dt.day.toString().padLeft(2, '0')}/${news.dt.year}",
//                   style: TextStyle(
//                     fontSize: 10.0,
//                     fontStyle: FontStyle.italic,
//                   ),
//                 ),
//               ),
//               Text(
//                 news.title,
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 news.text,
//                 maxLines: 2,
//                 style: TextStyle(fontSize: 14.0),
//                 overflow: TextOverflow.fade,
//               ),
//               Row(
//                 children: [
//                   TextButton(
//                     child: Text("Share"),
//                     onPressed: () {},
//                   ),
//                   TextButton(
//                     child: Text("Bookmark"),
//                     onPressed: () {},
//                   ),
//                   TextButton(
//                     child: Text("Link"),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NewsfeedWidget extends StatelessWidget {
//   final String title;

//   NewsfeedWidget({Key? key, required this.title}) : super(key: key);

//   List<News> newsList = [
//     News(
//       DateTime(2018, 12, 1),
//       "Mass shooting in Atlanta",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet tortor pretium, interdum magna sed, pulvinar ligula.",
//     ),
//     News(
//       DateTime(2019, 1, 12),
//       "Carnival clown found drunk in Mississippi",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet tortor pretium, interdum magna sed, pulvinar ligula.",
//     ),
//     News(
//       DateTime(2019, 2, 12),
//       "Walrus found in family pool in Florida",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet tortor pretium, interdum magna sed, pulvinar ligula.",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> newsCards = newsList.map((news) => NewsCard(news)).toList();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("News Feed"),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           children: newsCards,
//         ),
//       ),
//     );
//   }
// }

// ConstrainedBox

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> children = [];

//     for (int i = 0; i < _counter; i++) {
//       children.add(Container(child: Text("Row ${i}")));
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: ConstrainedBox(
//           constraints: BoxConstraints(
//             maxHeight: 350,
//             minHeight: 300,
//             minWidth: 200,
//             maxWidth: 250,
//           ),
//           child: Container(
//             decoration: BoxDecoration(border: Border.all()),
//             padding: EdgeInsets.all(5.0),
//             child: ListView(children: children),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// Expanded

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeWidget(),
//     );
//   }
// }

// class HomeWidget extends StatefulWidget {
//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   bool _topExpanded = false;
//   bool _bottomExpanded = false;

//   void toggleTop() {
//     setState(() {
//       _topExpanded = !_topExpanded;
//     });
//   }

//   void toggleBottom() {
//     setState(() {
//       _bottomExpanded = !_bottomExpanded;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Container topContainer = Container(
//       child: Text('Top Container'),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 1.0),
//         color: Colors.blue,
//       ),
//       padding: EdgeInsets.all(10.0),
//     );

//     Container bottomContainer = Container(
//       child: Text('Bottom Container'),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 1.0),
//         color: Colors.yellow,
//       ),
//       padding: EdgeInsets.all(10.0),
//     );

//     Widget topWidget = _topExpanded ? Expanded(child: topContainer) : topContainer;
//     Widget bottomWidget = _bottomExpanded ? Expanded(child: bottomContainer) : bottomContainer;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Expanded"),
//         actions: <Widget>[
//           TextButton.icon(
//             icon: Icon(_topExpanded ? Icons.expand_more : Icons.expand_less),
//             label: Text("Top"),
//             onPressed: toggleTop,
//           ),
//           TextButton.icon(
//             icon: Icon(_bottomExpanded ? Icons.expand_less : Icons.expand_more),
//             label: Text("Bottom"),
//             onPressed: toggleBottom,
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[topWidget, bottomWidget],
//         ),
//       ),
//     );
//   }
// }

// Flexible

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeWidget(key: UniqueKey()),
//     );
//   }
// }

// class HomeWidget extends StatefulWidget {
//   HomeWidget({Key? key}) : super(key: key);

//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   bool _topTightFit = false;
//   bool _bottomExpanded = false;

//   void toggleTop() {
//     setState(() => _topTightFit = !_topTightFit);
//   }

//   void toggleBottom() {
//     setState(() => _bottomExpanded = !_bottomExpanded);
//   }

//   @override
//   Widget build(BuildContext context) {
//     Container topContainer = Container(
//       child: Text('Top Container'),
//       constraints: BoxConstraints(
//         minHeight: 100.0,
//         minWidth: 100.0,
//         maxHeight: 200.0,
//         maxWidth: 200.0,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 1.0),
//         color: Colors.blue,
//       ),
//       padding: EdgeInsets.all(10.0),
//     );

//     Container bottomContainer = Container(
//       child: Text('Bottom Container'),
//       constraints: BoxConstraints(
//         minHeight: 100.0,
//         minWidth: 100.0,
//         maxHeight: 200.0,
//         maxWidth: 200.0,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 1.0),
//         color: Colors.yellow,
//       ),
//       padding: EdgeInsets.all(10.0),
//     );

//     Widget topWidget = Flexible(
//       child: topContainer,
//       fit: _topTightFit ? FlexFit.tight : FlexFit.loose,
//     );

//     Widget bottomWidget = _bottomExpanded
//         ? Expanded(child: bottomContainer)
//         : bottomContainer;

//     String toolbarTextTop =
//         "Top (" + (_topTightFit ? "tight" : "loose") + ")";
//     String toolbarTextBottom =
//         "Bottom (" + (_bottomExpanded ? "expanded" : "not expanded") + ")";

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Expanded"),
//         actions: <Widget>[
//           TextButton.icon(
//             icon: Icon(_topTightFit ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
//             label: Text(toolbarTextTop),
//             onPressed: toggleTop,
//           ),
//           TextButton.icon(
//             icon: Icon(_bottomExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
//             label: Text(toolbarTextBottom),
//             onPressed: toggleBottom,
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[topWidget, bottomWidget],
//         ),
//       ),
//     );
//   }
// }

// GestureApp

// import 'package:flutter/material.dart';

// void main() => runApp(GestureApp());

// class GestureApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeWidget(
//         key: UniqueKey(),
//         title: 'Gestures',
//       ),
//     );
//   }
// }

// class HomeWidget extends StatefulWidget {
//   HomeWidget({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   String _log = '';

//   void _clear() {
//     setState(() {
//       _log = '';
//     });
//   }

//   void _logGesture(String logText) {
//     setState(() {
//       _log += "\n";
//       _log += logText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             GestureDetector(
//               child: Text('Gesture Me'),
//               onTap: () => _logGesture('tap'),
//               onTapDown: (details) => _logGesture('onTapDown: $details'),
//               onTapUp: (details) => _logGesture('onTapUp: $details'),
//               onTapCancel: () => _logGesture('onTapCancel'),
//               onDoubleTap: () => _logGesture('onDoubleTap'),
//               onLongPress: () => _logGesture('onLongPress'),
//               onVerticalDragDown: (details) =>
//                   _logGesture('onVerticalDragDown: $details'),
//               onVerticalDragStart: (details) =>
//                   _logGesture('onVerticalDragStart: $details'),
//               onVerticalDragUpdate: (details) =>
//                   _logGesture('onVerticalDragUpdate'),
//               onVerticalDragEnd: (details) =>
//                   _logGesture('onVerticalDragEnd: $details'),
//               onVerticalDragCancel: () => _logGesture('onVerticalDragCancel'),
//               onHorizontalDragDown: (details) =>
//                   _logGesture('onHorizontalDragDown: $details'),
//               onHorizontalDragStart: (details) =>
//                   _logGesture('onHorizontalDragStart: $details'),
//               onHorizontalDragUpdate: (details) =>
//                   _logGesture('onHorizontalDragUpdate: $details'),
//               onHorizontalDragEnd: (details) =>
//                   _logGesture('onHorizontalDragEnd: $details'),
//               onHorizontalDragCancel: () =>
//                   _logGesture('onHorizontalDragCancel'),
//             ),
//             Container(
//               child: SingleChildScrollView(
//                 child: Text('$_log'),
//               ),
//               constraints: BoxConstraints(maxHeight: 200.0),
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.grey,
//                   width: 1.0,
//                 ),
//               ),
//               margin: EdgeInsets.all(10.0),
//               padding: EdgeInsets.all(10.0),
//             ),
//             ElevatedButton(
//               child: Text('Clear'),
//               onPressed: () => _clear(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Positioned

// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   double _top = 0.0;
//   double _left = 0.0;
//   List<Widget> widgetList = [];
//   final _random = Random();

//   int next(int min, int max) => min + _random.nextInt(max - min);

//   void _addLayer() {
//     setState(() {
//       widgetList.add(
//         Positioned(
//           left: _left,
//           top: _top,
//           child: Container(
//             width: 100.0,
//             height: 100.0,
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.grey,
//                 width: 2.0,
//               ),
//               color: Color.fromRGBO(
//                 next(0, 255),
//                 next(0, 255),
//                 next(0, 255),
//                 0.5,
//               ),
//             ),
//           ),
//         ),
//       );
//       _top += 30;
//       _left += 30;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Positioned"),
//       ),
//       body: Stack(children: widgetList),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addLayer,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// Exercise – ‘single_child_scroll_view

// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class CirclePainter extends CustomPainter {
//   final _random = Random();
//   List<Color> _colors = [];

//   CirclePainter() {
//     for (int i = 0; i < 100; i++) {
//       _colors.add(
//         Colors.green
//             .withRed(next(0, 255))
//             .withGreen(next(0, 255))
//             .withBlue(next(0, 255)),
//       );
//     }
//   }

//   int next(int min, int max) => min + _random.nextInt(max - min);

//   @override
//   void paint(Canvas canvas, Size size) {
//     for (int i = 0; i < 100; i++) {
//       var radius = (i * 10).toDouble();
//       canvas.drawCircle(
//         Offset(1000.0, 1000.0),
//         radius,
//         Paint()
//           ..color = _colors[i]
//           ..strokeCap = StrokeCap.round
//           ..style = PaintingStyle.stroke
//           ..strokeWidth = 15.0,
//       );
//     }
//   }

//   @override
//   bool shouldRepaint(CirclePainter oldDelegate) {
//     return false;
//   }
// }

// class MyHomePage extends StatelessWidget {
//   CirclePainter circlePainter = CirclePainter();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Scroll"),
//       ),
//       body: Center(
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           physics: AlwaysScrollableScrollPhysics(),
//           children: <Widget>[
//             CustomPaint(
//               size: Size(2000.0, 2000.0),
//               foregroundPainter: circlePainter,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      image:
          'https://images.unsplash.com/photo-1621259182978-fbf93132d53d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
      name: 'Product 1',
      price: '\$500',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      name: 'Product 2',
      price: '\$600',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=384&q=80',
      name: 'Product 3',
      price: '\$200',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1546054454-aa26e2b734c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80',
      name: 'Product 4',
      price: '\$1200',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1640955014216-75201056c829?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
      name: 'Product 5',
      price: '\$390',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1635514569156-ca58f1247e8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      name: 'Product 6',
      price: '\$299',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=842&q=80',
      name: 'Product 7',
      price: '\$300',
    ),
    Product(
      image:
          'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
      name: 'Product 8',
      price: '\$355',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products for Sale'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return buildProductWidget(products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductWidget(Product product) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: product.image != null
                  ? Image.network(
                      product.image!,
                      fit: BoxFit.cover,
                    )
                  : Placeholder(),
            ),
          ),
          SizedBox(height: 8),
          Text(
            product.name ?? 'No Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(product.price ?? 'No Price'),
        ],
      ),
    );
  }
}

class Product {
  final String? image;
  final String? name;
  final String? price;

  Product({this.image, this.name, this.price});
}
