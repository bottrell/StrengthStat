import 'package:flutter/material.dart';
import 'package:strength_stat/screens/test_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavBar(),
    );
  }
}

// NavBar definition
class NavBar extends StatefulWidget {
  const NavBar({super.key});

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
      body: <Widget>[
        // Profile screen
        const TestWidget(),
        // Exercises Screen
        const TestWidget(),
        // Workout Screen
        const TestWidget(),
        // Measure Screen
        const TestWidget(),
        // Stats Screen
        const TestWidget(),
      ][currentPageIndex],
    );
  }
}
