import 'dart:ui';

import 'package:connect_you/components/StyledBottomNavigation.dart';
import 'package:connect_you/components/styledAppbar.dart';
import 'package:connect_you/components/styledCard.dart';
import 'package:connect_you/components/styledDrawer.dart';
import 'package:connect_you/components/styledInput.dart';
import 'package:connect_you/pages/auth/signin.dart';
import 'package:connect_you/pages/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: StyledDrawer(),
        appBar: CustomAppBar(title: 'Dashboard'),
        bottomNavigationBar: StyledBottomNavigation(
          currentIndex: _currentIndex,
          pageController: _pageController,
          onTabTapped: _onTabTapped,
        ),
        body: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Home(),
              Search(),
              Add(),
              Account(),
            ],
          ),
        ),
      ),
      routes: {
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, Om ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Good Evening',
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        splashColor: Colors.black,
                        onTap: () {
                          // Navigator.pushNamed(context, '/auto-text');
                        },
                        child: StyledCard(
                          width: 130,
                          height: 130,
                          variant: 'default',
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_outward,
                                color: Colors.white,
                              ),
                              Flexible(
                                child: Text(
                                  'Auto Text Message',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        splashColor: Colors.black,
                        onTap: () {
                          // Navigator.pushNamed(context, '/auto-text');
                        },
                        child: StyledCard(
                          width: 130,
                          height: 130,
                          variant: 'default',
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.web,
                                color: Colors.white,
                              ),
                              Flexible(
                                child: Text(
                                  'Bussness Website',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        splashColor: Colors.black,
                        onTap: () {
                          // Navigator.pushNamed(context, '/auto-text');
                        },
                        child: StyledCard(
                          width: 130,
                          height: 130,
                          variant: 'default',
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: Colors.white,
                              ),
                              Flexible(
                                child: Text(
                                  'User form',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        splashColor: Colors.black,
                        onTap: () {
                          // Navigator.pushNamed(context, '/auto-text');
                        },
                        child: StyledCard(
                          width: 130,
                          height: 130,
                          variant: 'default',
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.youtube_searched_for,
                                color: Colors.white,
                              ),
                              Flexible(
                                child: Text(
                                  'Youtube',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchQueryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: StyledInput(
        hintText: 'Search...',
        controller: _searchQueryController,
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool theme = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white12),
            accountName: Text(
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              'Om Patel',
            ),
            accountEmail: Text(
              'ompatel.developer@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Membership Plan'),
          ),
          ListTile(
            leading: Icon(Icons.wb_sunny_outlined),
            trailing: Switch(
              value: true,
              onChanged: (newvalue) {
                setState(() {
                  theme = !theme;
                });
              },
            ),
            title: Text('Theme'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Bio'),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.globe),
            title: Text('Website'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
