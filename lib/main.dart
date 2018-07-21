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
          title: Center(child: Text("Unit Converter", style: Theme.of(context).textTheme.title,)),
        ),
        body: Center(
          child: Category(
              icon: _categoryIcon,
              color: _categoryColor,
              title: _categoryTitle),
        ),
      ),
    );
  }
}

List<Category> _buildListTiles(){

}


