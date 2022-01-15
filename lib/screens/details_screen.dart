import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/details_screen/session_card.dart';
import 'package:meditation_app/screens/details_screen/session_card_meditation.dart';
import 'package:meditation_app/widgets/bottom_navbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavBar(
          menu: "e",
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .43,
              decoration: const BoxDecoration(
                color: kBlueColor,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/meditation_bg.png'),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Meditação ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900)),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Text(
                      'De 3 a 10 Minutos de aula',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Viva mais feliz e de forma mais \nsaudavel, aprendendo os passos \nfundamentais para uma meditação \nprofunda.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 15,
                      ),
                      width: size.width * .50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Pesquisar',
                            icon: SvgPicture.asset('assets/icons/search.svg'),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      height: size.height * .32,
                      child: Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 2.0,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: <Widget>[
                            SessionCard(title: 'Session 01', isActive: true),
                            SessionCard(title: 'Session 02'),
                            SessionCard(title: 'Session 03'),
                            SessionCard(title: 'Session 04'),
                            SessionCard(title: 'Session 05'),
                            SessionCard(title: 'Session 06'),
                            SessionCard(title: 'Session 06'),
                            SessionCard(title: 'Session 06'),
                            SessionCard(title: 'Session 06'),
                            SessionCard(title: 'Session 06'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      'MEDITACAO',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * .03,
                    ),
                    SessionCardMeditation(title: 'title'),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
