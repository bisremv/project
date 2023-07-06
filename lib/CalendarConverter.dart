import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abushakir/abushakir.dart';

class CalendarConverter extends StatelessWidget {
  const CalendarConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarConverterScreen();
  }
}

class CalendarConverterScreen extends StatefulWidget {
  const CalendarConverterScreen({super.key});

  @override
  State<CalendarConverterScreen> createState() =>
      _CalendarConverterScreenState();
}

class _CalendarConverterScreenState extends State<CalendarConverterScreen> {
  static final TextStyle myTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
  EtDatetime convertdate(int year, int month, int day) {
    DateTime gregorianDate = DateTime(year, month, day + 1);
    EtDatetime ethiopian1 = new EtDatetime.fromMillisecondsSinceEpoch(
        gregorianDate.millisecondsSinceEpoch);
    return ethiopian1;
  }

  DateTime convertdategr(int year, int month, int day) {
    String days = "${day - 1}";
    String months = "$month";
    if (days.length == 1) {
      days = "0$days";
    }
    if (months.length == 1) {
      months = "0$month";
    }
    EtDatetime ethiopian = EtDatetime.parse("$year-$months-$days 23:00:00");
    DateTime gregorian =
        new DateTime.fromMillisecondsSinceEpoch(ethiopian.moment);

    return gregorian;
  }

  late int etslectedDay = 1;
  late int etslectedmonth = 1;
  late int etslectedyear = 2015;
  late int grslectedDay = 1;
  late int grslectedmonth = 1;
  late int grslectedyear = 2023;
  late List<Widget> day = [];
  List<Widget> etMonth = [
    Text(
      "መስከረም",
      style: myTextStyle,
    ), // Meskerem
    Text(
      "ጥቅምት",
      style: myTextStyle,
    ), // Tikimt
    Text(
      "ሕዳር",
      style: myTextStyle,
    ), // Hidar
    Text(
      "ታሕሣስ",
      style: myTextStyle,
    ), // Tahsas
    Text(
      "ጥር",
      style: myTextStyle,
    ), // Ter
    Text(
      "የካቲት",
      style: myTextStyle,
    ), // Yekatit
    Text(
      "መጋቢት",
      style: myTextStyle,
    ), // Megabit
    Text(
      "ሚያዚያ",
      style: myTextStyle,
    ), // Miazia
    Text(
      "ግንቦት",
      style: myTextStyle,
    ), // Ginbot
    Text(
      "ሰኔ",
      style: myTextStyle,
    ), // Sene
    Text(
      "ሐምሌ",
      style: myTextStyle,
    ), // Hamle
    Text(
      "ነሐሴ",
      style: myTextStyle,
    ), // Nehase
    Text(
      "ጳጉሜ",
      style: myTextStyle,
    ), // Pagume
  ];
  List<Widget> grMonths = [
    Text(
      "January",
      style: myTextStyle,
    ),
    Text(
      "February",
      style: myTextStyle,
    ),
    Text(
      "March",
      style: myTextStyle,
    ),
    Text(
      "April",
      style: myTextStyle,
    ),
    Text(
      "May",
      style: myTextStyle,
    ),
    Text(
      "June",
      style: myTextStyle,
    ),
    Text(
      "July",
      style: myTextStyle,
    ),
    Text(
      "August",
      style: myTextStyle,
    ),
    Text(
      "September",
      style: myTextStyle,
    ),
    Text(
      "October",
      style: myTextStyle,
    ),
    Text(
      "November",
      style: myTextStyle,
    ),
    Text(
      "December",
      style: myTextStyle,
    ),
  ];
  late List<Widget> etyear = [];
  DateTime selectedDate = DateTime.now();
  void setdatew() {
    for (int i = 1; i <= 31; i++) {
      day.add(
        Text(
          "$i",
          style: myTextStyle,
        ),
      );
    }
    for (int i = 1800; i <= 2600; i++) {
      etyear.add(
        Text(
          "$i",
          style: myTextStyle,
        ),
      );
    }
    for (int i = 1800; i <= 2600; i++) {
      etyear.add(
        Text(
          "$i",
          style: myTextStyle,
        ),
      );
    }
  }

  FixedExtentScrollController scrollControlleretd =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollControlleretm =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollControllermety =
      FixedExtentScrollController(initialItem: 215);
  FixedExtentScrollController scrollControllergrd =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollControllergrm =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollControllermgry =
      FixedExtentScrollController(initialItem: 223);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setdatew();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calander converter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              "Ethiopian calander",
              style: myTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 0),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  datepicker(day, 1, 1, scrollControlleretd),
                  datepicker(etMonth, 2, 1, scrollControlleretm),
                  datepicker(etyear, 3, 1, scrollControllermety),
                ],
              ),
            ),
          ),
          Text(
            "TO GREGORIAN: ${convertdategr(etslectedyear, etslectedmonth, etslectedDay).day}/${convertdategr(etslectedyear, etslectedmonth, etslectedDay).month}/${convertdategr(etslectedyear, etslectedmonth, etslectedDay).year}  ",
            style: myTextStyle,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "GREGORIAN Calander",
            style: myTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  datepicker(day, 1, 2, scrollControllergrd),
                  datepicker(grMonths, 2, 2, scrollControllergrm),
                  datepicker(etyear, 3, 2, scrollControllermgry),
                ],
              ),
            ),
          ),
          Text(
            "TO ETHIOPIAN : ${convertdate(grslectedyear, grslectedmonth, grslectedDay).day} /${convertdate(grslectedyear, grslectedmonth, grslectedDay).month} /${convertdate(grslectedyear, grslectedmonth, grslectedDay).year}   ",
            style: myTextStyle,
          ),
        ],
      ),
    );
  }

  Expanded datepicker(List<Widget> input, int idin, int idout, scrollcontrol) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 55,
            margin: EdgeInsets.fromLTRB(0, 97, 0, 0),
            color: Colors.grey.withOpacity(0.1),
          ),
          Container(
            height: 250,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 40,
              onSelectedItemChanged: (index) {
                setState(() {
                  switch (idout) {
                    case 1:
                      {
                        if (idin == 1) {
                          etslectedDay = index + 1;
                          if (index == (30)) {
                            scrollControlleretd.jumpToItem(index - 1);
                          } else if (etslectedmonth == 13) {
                            if (index > 5) {
                              if (leapyear(index)) {
                                scrollControlleretd.jumpToItem(5);
                              } else {
                                scrollControlleretd.jumpToItem(4);
                              }
                            }
                          }
                        } else if (idin == 2) {
                          etslectedmonth = index + 1;
                        } else if (idin == 3) {
                          etslectedyear = 1800 + index;
                        }
                        break;
                      }
                    case 2:
                      {
                        if (idin == 1) {
                          //to check the numer of days in month
                          if (30 ==
                              checkMonthNumDays(
                                  grslectedmonth, grslectedyear)) {
                            if (index > 30 - 1) {
                              scrollControllergrd.jumpToItem(30 - 1);
                            }
                          } else if (29 ==
                              checkMonthNumDays(
                                  grslectedmonth, grslectedyear)) {
                            if (index > 29) {
                              scrollControllergrd.jumpToItem(29 - 1);
                            }
                          } else if (28 ==
                              checkMonthNumDays(
                                  grslectedmonth, grslectedyear)) {
                            if (index > 28) {
                              scrollControllergrd.jumpToItem(28 - 1);
                            }
                          }
                          grslectedDay = index + 1;
                        } else if (idin == 2) {
                          grslectedmonth = index + 1;
                        } else if (idin == 3) {
                          grslectedyear = 1800 + index;
                        }
                        break;
                      }
                    default:
                      {}
                      if (index == 1) {}
                  }
                });
              },
              squeeze: 1.0915,
              controller: scrollcontrol,
              physics: FixedExtentScrollPhysics(),
              perspective: 0.01,
              diameterRatio: 0.6942,
              useMagnifier: true,
              magnification: 1.3,
              childDelegate: ListWheelChildLoopingListDelegate(
                children: input,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool leapyear(z) {
  int x = 2015;
  int y = 2015;
  // bool ans = false;
  while (x >= 1800) {
    if (z == x) {
      return true;
    }
    x = x - 4;
  }
  while (y <= 2600) {
    if (z == y) {
      return true;
    }
    y = y + 4;
  }
  return false;
}

int checkMonthNumDays(int numOfMonth, int currentYear) {
  int checkDays = -1;
  print(numOfMonth);
  if (numOfMonth == 1 ||
      numOfMonth == 3 ||
      numOfMonth == 5 ||
      numOfMonth == 7 ||
      numOfMonth == 8 ||
      numOfMonth == 10 ||
      numOfMonth == 12) {
    checkDays = 31;
  } else if (numOfMonth == 4 ||
      numOfMonth == 6 ||
      numOfMonth == 9 ||
      numOfMonth == 11) {
    checkDays = 30;
  } else if (numOfMonth == 2) {
    checkDays = 28; // default to 28 days
    if (currentYear % 4 == 0 &&
        (currentYear % 100 != 0 || currentYear % 400 == 0)) {
      // Leap year condition: divisible by 4 and not divisible by 100, or divisible by 400
      checkDays = 29; // February has 29 days
    }
  }

  return checkDays;
}
