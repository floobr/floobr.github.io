import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed Content',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Emerald Starters!'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Start!'),
              Tab(text: 'Fire'),
              Tab( text: 'Grass'),
              Tab(text: 'Water'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabContent(
              title: 'Start',
              imageUrl: 'https://steamuserimages-a.akamaihd.net/ugc/1862800643587205256/4C9556F0E634AF7F82C97E197674ECA5D87AE634/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true',
              contentImageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e8ddc4da-23dd-4502-b65b-378c9cfe5efa/dffq7hx-a914f2f8-742d-4a0d-b010-c288c7414a0f.png/v1/fill/w_1280,h_1280/pokemon_emerald_logo_by_jormxdos_dffq7hx-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcL2U4ZGRjNGRhLTIzZGQtNDUwMi1iNjViLTM3OGM5Y2ZlNWVmYVwvZGZmcTdoeC1hOTE0ZjJmOC03NDJkLTRhMGQtYjAxMC1jMjg4Yzc0MTRhMGYucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Euu2Nv73mwJMCOsdRos6bHXHQcW_AIGumTpk1Qe5T9w',
              description: 'Meet the starters on the next tab!',
            ),
            TabContent(
              title: 'Torchic',
              imageUrl: 'https://minecraft.novaskin.me/skin/5774540746522624.png',
              contentImageUrl: 'https://art.pixilart.com/3f3a29bb8cf2b6c.png',
              description: 'Torchic sticks with its Trainer, following behind with unsteady steps. This Pokémon breathes fire of over 1,800 degrees Fahrenheit, including fireballs that leave the foe scorched black.',
            ),
            TabContent(
              title: 'Treecko',
              imageUrl: 'https://minecraft.novaskin.me/skin/5774540746522624.png',
              contentImageUrl: 'https://i.redd.it/magevkvav5531.png',
              description: 'Treecko has small hooks on the bottom of its feet that enable it to scale vertical walls. This Pokémon attacks by slamming foes with its thick tail.',
            ),
            TabContent(
              title: 'Mudkip',
              imageUrl: 'https://minecraft.novaskin.me/skin/5774540746522624.png',
              contentImageUrl: 'https://art.pixilart.com/c4fa620c9ed6e13.png',
              description: 'The fin on Mudkip’s head acts as highly sensitive radar. Using its fin to sense movements of water and air, this Pokémon can determine what is taking place around it without using its eyes.',
            ),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String contentImageUrl;
  final String description;

  TabContent({required this.title, required this.imageUrl, required this.contentImageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              contentImageUrl,
              width: 600.0,
              height: 480.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Pixel'), 
            ),
            SizedBox(height: 20.0),
            Text(
              description,
              style: TextStyle(fontSize: 25.0, fontFamily: 'Pixel'),
            ),
          ],
        ),
      ),
    );
  }
}
