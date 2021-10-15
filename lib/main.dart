import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // TODO: to replace with Recipe Card
            return Text(Recipe.samples[index].label);
          },
        ),
      ),
    );
  }

  // TODO: add buildRecipeCard() here
}
