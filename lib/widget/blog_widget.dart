import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final TextStyle titleStyle = TextStyle(color: Color(0xFF622F74), fontSize: 30);
final TextStyle bodyStyle = TextStyle(color: Color(0xFF622F74), fontSize: 20);
final imageUrl =
    'https://ei.marketwatch.com/Multimedia/2017/05/01/Photos/ZH/MW-FL565_j_fugg_20170501190152_ZH.jpg?uuid=2a7f0e8c-2ec2-11e7-841b-001cc448aede';

class BlogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.network(imageUrl, fit: BoxFit.cover),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Text('Jacob Fugger the rich of Augsburg', style: titleStyle),
              const SizedBox(height: 8),
              buildSharing(),
              Text(
                  '''Fugger is a German family that was historically a prominent group of European bankers, members of the fifteenth- and sixteenth-century mercantile patriciate of Augsburg, international mercantile bankers, and venture capitalists. Alongside the Welser family, the Fugger family controlled much of the European economy in the sixteenth century and accumulated enormous wealth. The Fuggers held a near monopoly on the European copper market.

This banking family replaced the de' Medici family, who influenced all of Europe during the Renaissance. The Fuggers took over many of the Medicis' assets and their political power and influence. They were closely affiliated with the House of Habsburg whose rise to world power they financed. Unlike the citizenry of their hometown, they never converted to Lutheranism as presented in the Augsburg Confession but rather remained with the Roman Catholic Church.

Jakob Fugger "the Rich" was elevated to the nobility of the Holy Roman Empire in May 1511 and assumed the title Imperial Count of Kirchberg and Weissenhorn in 1514. Today he is considered to be one of the wealthiest people ever to have lived. The company was dissolved in 1657, however the Fuggers remained wealthy landowners and ruled the County of Kirchberg and Weissenhorn. The Babenhausen branch became Princes of the Holy Roman Empire in 1803, the Glött branch princes in the Kingdom of Bavaria in 1914.''',
                  style: bodyStyle),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSharing() {
    return Row(
      children: <Widget>[
        Expanded(child: Text('12.10.2018')),
        Text('Share:'),
        IconButton(
          icon: Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.linkedin),
          onPressed: () {},
        ),
      ],
    );
  }
}

/*
return ListView(
      children: <Widget>[
        Image.network(imageUrl, fit: BoxFit.cover),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Text('Jacob Fugger the rich of Augsburg', style: titleStyle),
              const SizedBox(height: 8),
              Text(
                  '''Fugger is a German family that was historically a prominent group of European bankers, members of the fifteenth- and sixteenth-century mercantile patriciate of Augsburg, international mercantile bankers, and venture capitalists. Alongside the Welser family, the Fugger family controlled much of the European economy in the sixteenth century and accumulated enormous wealth. The Fuggers held a near monopoly on the European copper market.

This banking family replaced the de' Medici family, who influenced all of Europe during the Renaissance. The Fuggers took over many of the Medicis' assets and their political power and influence. They were closely affiliated with the House of Habsburg whose rise to world power they financed. Unlike the citizenry of their hometown, they never converted to Lutheranism as presented in the Augsburg Confession but rather remained with the Roman Catholic Church.

Jakob Fugger "the Rich" was elevated to the nobility of the Holy Roman Empire in May 1511 and assumed the title Imperial Count of Kirchberg and Weissenhorn in 1514. Today he is considered to be one of the wealthiest people ever to have lived. The company was dissolved in 1657, however the Fuggers remained wealthy landowners and ruled the County of Kirchberg and Weissenhorn. The Babenhausen branch became Princes of the Holy Roman Empire in 1803, the Glött branch princes in the Kingdom of Bavaria in 1914.''',
                  style: bodyStyle),
            ],
          ),
        ),
      ],
    );
 */
