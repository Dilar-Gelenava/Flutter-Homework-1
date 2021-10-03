import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'We Are All Animals'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _dog = 'https://static.wikia.nocookie.net/peppapedia/images/0/05/Doge.png/revision/latest?cb=20210323171135';
  final _cat = 'https://ellexia.ca/wp-content/uploads/2021/05/expressive-cat-nana-1-2-5f16cfee907df__700.jpg';
  final _racoon = 'https://i.kym-cdn.com/entries/icons/original/000/028/727/Screen_Shot_2019-02-26_at_3.38.50_PM.png';
  final _monkey = 'https://c.tenor.com/jzlAeJisK9IAAAAC/monkey-laptop.gif';

  var _source = 'https://static.wikia.nocookie.net/peppapedia/images/0/05/Doge.png/revision/latest?cb=20210323171135';

  void _setSource(_src) {
    setState(() {
      _source = _src;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(

              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                _source,
                height: 400.0,
                width: 400.0,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(90, 90)), onPressed: () => _setSource(_dog), child: const Text('Dog'),),
                    ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(90, 90)), onPressed: () => _setSource(_cat), child: const Text('Cat'),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(90, 90)), onPressed: () => _setSource(_racoon), child: const Text('Racoon'),),
                    ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(90, 90)), onPressed: () => _setSource(_monkey), child: const Text('Monkey'),),
                  ],
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}
