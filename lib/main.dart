import 'package:flutter/material.dart';
import 'league_selection.dart';

void main() => runApp(const LeagueTable());

class LeagueTable extends StatefulWidget {
  const LeagueTable({Key? key}) : super(key: key);

  @override
  State<LeagueTable> createState() => _LeagueTableState();
}

class _LeagueTableState extends State<LeagueTable> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Dashboard(),
      home: SelectLeague(),
    );
  }
}
