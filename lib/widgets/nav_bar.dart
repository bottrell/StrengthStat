import 'package:flutter/material.dart';

// NavBar definition
class NavBar extends StatefulWidget {
  const NavBar(this._screens, {super.key});

  final List<Widget> _screens;

  @override
  State<NavBar> createState() => _NavigationExampleState();
}

// NavBar state
class _NavigationExampleState extends State<NavBar> {
  int currentPageIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Actual NavigationBar definition
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          // Profile
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          // Exercises
          NavigationDestination(
            selectedIcon: Icon(Icons.fitness_center_outlined),
            icon: Icon(Icons.fitness_center_outlined),
            label: 'Exercises',
          ),
          // Workout
          NavigationDestination(
            selectedIcon: Icon(Icons.add_circle),
            icon: Icon(Icons.add_circle_outline),
            label: 'Workout',
          ),
          // Measure
          NavigationDestination(
            selectedIcon: Icon(Icons.straighten),
            icon: Icon(Icons.straighten_outlined),
            label: 'Measure',
          ),
          // Stats
          NavigationDestination(
            selectedIcon: Icon(Icons.bar_chart),
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Stats',
          ),
        ],
      ),
      // Scaffold body is where you define the pages that will be shown here
      body: widget._screens[currentPageIndex],
    );
  }
}
