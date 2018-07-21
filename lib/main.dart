import 'package:flutter/material.dart';

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

class Category extends StatelessWidget {
  final ColorSwatch color;
  final String title;
  final Icon icon;
  const Category(
      {@required this.icon, @required this.color, @required this.title});

  @override
  build(BuildContext context) {
    final _borderRadius = BorderRadius.circular(50.0);
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        // width: Theme.of(context).,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            highlightColor: color[100],
            splashColor: color[300],
            borderRadius: _borderRadius,
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.cake,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700],
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
