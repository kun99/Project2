import 'package:flutter/material.dart';

List<String> homeTeams = [
  'Home team 1', 'Home team 2', 'Home team 3', 'Home team 4', 'Home team 5', 'Home team 6', 'Home team 7'
];
List<String> awayTeams = [
  'Away team 1', 'Away team 2', 'Away team 3', 'Away team 4', 'Away team 5', 'Away team 6', 'Away team 7'
];

class TeamSchedule extends StatefulWidget {

  final String leagueName;
  TeamSchedule(this.leagueName);

  @override
  State<TeamSchedule> createState() => _TeamScheduleState(leagueName);
}

class _TeamScheduleState extends State<TeamSchedule> {
  final String leagueName;
  _TeamScheduleState(this.leagueName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${leagueName} Schedule'),
      ),
      body: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: homeTeams.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              //child: Image(image: AssetImage('images/trophy.png')),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(homeTeams[index]),
                  SizedBox(height: 50),
                  Text(
                    'Date of game or result of game',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Text(awayTeams[index]),
                ],
              ),
            ),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
