import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';

class laporan extends StatefulWidget {
  const laporan({super.key});

  @override
  State<laporan> createState() => _laporanState();
}

class _laporanState extends State<laporan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6828c),
      appBar: CalendarAppBar(
        accent: Color(0xfff6828c),
        backButton: false,
        locale: "id",
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 360)),
        lastDate: DateTime.now(),
      ),
    );
  }
}
