import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:package_example/screen/about_us_screen.dart';
import 'package:package_example/screen/calculation_screen.dart';
import 'package:package_example/screen/contract_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "image/slider1.jpg",
    "image/slider2.jpg",
    "image/slider3.jpg",
    "image/slider4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("image/2021WT1.jpg"), fit: BoxFit.cover),
              ),
              child: Text('Wetherings'),
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Contract Us'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ContractUsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: Swiper(
            autoplay: true,
            itemCount: sliders.length,
            itemBuilder: (context, index) => Image.asset(sliders[index])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: (value) {
          switch (value) {
            case 1:
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CalculationScreen(),
                ),
              );
              break;
            default:
              break;
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Calculate',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
