import 'package:flutter/material.dart';
import 'package:vinipx/config/assets.dart';
import 'package:vinipx/tabs/about_tab.dart';
import 'package:vinipx/tabs/projects_tab.dart';
import 'package:vinipx/widgets/theme_inherited_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    // BlogTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Image.asset(
                    Assets.moon,
                    height: 20,
                    width: 20,
                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chrome_reader_mode),
            //   title: Text('Blog'),
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mobile_screen_share),
              title: Text('Projects'),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
          selectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
