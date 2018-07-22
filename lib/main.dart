import 'package:flutter/material.dart';
import 'category.dart';

main() => runApp(new UnitConverterApp());

const _categoryTitle = 'Cake';
const _categoryIcon = Icon(Icons.cake);
final _categoryColor = Colors.green;

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nonsense',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green[100],
          title: Center(
              child: Text(
            "Unit Converter",
            style: Theme.of(context).textTheme.title,
          )),
        ),
        body: _buildCategories(6),
      ),
    );
  }
}

List<Category> _buildListTiles() {}

const titleList = <String>[
  "Length",
  "Area",
  "Volume",
  "Mass",
  "Time",
  "Digital Storage"
];

const colorList = <ColorSwatch>[
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.orange,
  Colors.teal
];

Widget _buildCategories(int size) {
  return ListView.builder(
    itemCount: size,
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    itemBuilder: (context, index) =>
        /*index.isOdd
        ? Divider()
        : */
        Category(
          icon: _categoryIcon,
          color: colorList[index],
          title: titleList[index],
        ),
  );
}
