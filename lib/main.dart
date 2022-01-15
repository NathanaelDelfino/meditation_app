import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_navbar.dart';
import 'package:meditation_app/widgets/category_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .50,
          decoration: const BoxDecoration(
            color: kMenuBackgroundColor,
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: kMenuHamburguerColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                Text(
                  'Bom dia Shishir',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 70),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Pesquisar',
                        icon: SvgPicture.asset('assets/icons/search.svg'),
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: 'Recomendações',
                        svgScr: 'assets/icons/Hamburger.svg',
                        press: () => {},
                      ),
                      CategoryCard(
                        title: 'Exercicios',
                        svgScr: 'assets/icons/Excrecises.svg',
                        press: () => {},
                      ),
                      CategoryCard(
                        title: 'Meditação',
                        svgScr: 'assets/icons/Meditation.svg',
                        press: () => {},
                      ),
                      CategoryCard(
                        title: 'Yoga',
                        svgScr: 'assets/icons/yoga.svg',
                        press: () => {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavBar(menu: "h"),
    );
  }
}
