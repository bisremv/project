import 'package:flutter/material.dart';
import 'package:abushakir/abushakir.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return EthiopianGregorianCalendar();
  }
}

class EthiopianGregorianCalendar extends StatefulWidget {
  @override
  _EthiopianGregorianCalendarState createState() =>
      _EthiopianGregorianCalendarState();
}

class _EthiopianGregorianCalendarState
    extends State<EthiopianGregorianCalendar> {
  DateTime _selectedDate = DateTime.now();
  EtDatetime convertdate(year, month, day) {
    DateTime gregorianDate = DateTime(year, month, day);
    EtDatetime ethiopian1 = new EtDatetime.fromMillisecondsSinceEpoch(
        gregorianDate.millisecondsSinceEpoch);
    return ethiopian1;
  }

  String? dateString;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ethiopian-Gregorian Calendar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                side: BorderSide(color: Colors.transparent, width: 2.0),
              ),
              child: TableCalendar(
                firstDay: DateTime.utc(2005, 1, 1),
                lastDay: DateTime.utc(2033, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                calendarFormat: _calendarFormat,
                weekendDays: const [DateTime.sunday, 6],
                startingDayOfWeek: StartingDayOfWeek.monday,
                daysOfWeekHeight: 40.0,
                rowHeight: 60.0,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDate = selectedDay;
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                calendarBuilders: CalendarBuilders(
                  todayBuilder: (context, date, events) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${date.day}', // Additional Text: '9'
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${convertdate(date.year, date.month, date.day).day}/ ${ConvertToEthiopic(int.parse("${convertdate(date.year, date.month, date.day).day}"))}', // Additional Text: '9'
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  defaultBuilder: (context, date, events) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${date.day}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${convertdate(date.year, date.month, date.day).day}/ ${ConvertToEthiopic(int.parse("${convertdate(date.year, date.month, date.day).day}"))}', // Additional Text: '9'
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  selectedBuilder: (context, date, events) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${date.day}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${convertdate(date.year, date.month, date.day).day}/ ${ConvertToEthiopic(int.parse("${convertdate(date.year, date.month, date.day).day}"))}', // Additional Text: '9'
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  outsideBuilder: (context, date, events) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${date.day}",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${convertdate(date.year, date.month, date.day).day}/ ${ConvertToEthiopic(int.parse("${convertdate(date.year, date.month, date.day).day}"))}', // Additional Text: '9'
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  dowBuilder: (context, weakday) {
                    return Container(
                      // height: 155,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            _getCustomDayLabel(weakday, 1),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _getCustomDayLabel(weakday, 2),
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                headerStyle: const HeaderStyle(
                  titleTextStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  formatButtonTextStyle:
                      TextStyle(color: Colors.black87, fontSize: 16.0),
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _getCustomDayLabel(DateTime Week, int i) {
  String name;
  if (i == 1) {
    name = Week.weekday.toString();
  } else {
    name = (int.parse(Week.weekday.toString()) + 10).toString();
  }
  switch (name) {
    case "1":
      return 'Mon';
    case "2":
      return 'Tue';
    case "3":
      return 'Wed';
    case "4":
      return 'Thu';
    case "5":
      return 'Fri';
    case "6":
      return 'Sat';
    case "7":
      return 'Sun';
    case "11":
      return 'ሰኞ';
    case "12":
      return 'ማክሰኞ';
    case "13":
      return 'እሮብ';
    case "14":
      return 'ሐሙስ';
    case "15":
      return 'አርብ';
    case "16":
      return 'ቅዳሜ';
    case "17":
      return 'እሁድ';
    default:
      return "Error";
  }
}
