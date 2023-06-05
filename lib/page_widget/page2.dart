import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Page 2',
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.blue),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
    );
  }
}