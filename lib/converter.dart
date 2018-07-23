import 'package:flutter/material.dart';

class ConverterRoute extends StatefulWidget{
    
    final title;
    final color;
    final context;

    ConverterRoute(this.context, this.title, this.color);
    @override
    State<StatefulWidget> createState() => ConverterRouteState(context, title, color);
}

class ConverterRouteState extends State<ConverterRoute>{
    final title;
    final color;
    final context;

    ConverterRouteState(this.context, this.title, this.color);
    @override
    build(BuildContext context){
        return Scaffold(
                appBar: AppBar(
                  title: Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  backgroundColor: color[300],
                ),
                body: ListView.builder(
                  itemBuilder: (context, index) => Card(
                        color: color[300],
                        child: ListTile(
                          //   contentPadding: EdgeInsets.all(8.0),
                          title: Center(
                              child: Text(
                            '$title Unit ${index + 1}',
                            style: Theme.of(context).textTheme.title,
                          )),
                          subtitle: Center(
                            child: Text(
                              'Conversion: ${double.parse((index + 1).toString())}',
                              style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                        ),
                      ),
                  itemCount: 10,
                ),
              );
        
    }
}