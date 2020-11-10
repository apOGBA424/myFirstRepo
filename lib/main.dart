import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'landingPage.dart';
import 'feedsPage.dart';
import 'archivesPage.dart';
import 'profilePage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'testingROUTES',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'whussUp',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_sharp), text: 'Home'),
                Tab(icon: Icon(Icons.featured_play_list_sharp), text: 'Feeds'),
                Tab(icon: Icon(Icons.archive_sharp), text: 'Archives'),
                Tab(icon: Icon(Icons.account_circle_sharp), text: 'Profiles'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LandingPage(),
              FeedsPage(),
              ArchivesPage(),
              ProfilePage(),
            ],
          ),
        ),
      ),
    ),
  );
}
