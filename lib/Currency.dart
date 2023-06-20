import 'package:flutter/material.dart';
import 'package:project/Home.dart';
import 'package:project/Tools.dart';
// import 'main.dart';
// import 'currencyApi.dart';
// import 'package:http/http.dart';
import 'package:project/Networking.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return CurrencyScreen();
  }
}

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({super.key});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Toolspage();
          }),
        );
      } else if (_selectedIndex == 1) {
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Home();
          }),
        );
      }
    });
  }

  void getRate() async {
    NetworkHelper networkHelper = NetworkHelper(
        "https://v6.exchangerate-api.com/v6/61d988ddc22620243b031485/latest/$from");
    var rate = await networkHelper.getData();
    value = rate['conversion_rates']['$to'];
    print(value);
    // String CurencyName = rate['conversion_rates'];
  }

  double value = 0.0;
  String to = "ETB";
  String from = "USD";
  var currencyList = <String>[
    "USD",
    "AED",
    "AFN",
    "ALL",
    "AMD",
    "ANG",
    "AOA",
    "ARS",
    "AUD",
    "AWG",
    "AZN",
    "BAM",
    "BBD",
    "BDT",
    "BGN",
    "BHD",
    "BIF",
    "BMD",
    "BND",
    "BOB",
    "BRL",
    "BSD",
    "BTN",
    "BWP",
    "BYN",
    "BZD",
    "CAD",
    "CDF",
    "CHF",
    "CLP",
    "CNY",
    "COP",
    "CRC",
    "CUP",
    "CVE",
    "CZK",
    "DKK",
    "DOP",
    "DZD",
    "EGP",
    "ERN",
    "ETB",
    "EUR",
    "FJD",
    "FKP",
    "FOK",
    "GBP",
    "GEL",
    "GGP",
    "GHS",
    "GIP",
    "GMD",
    "GNF",
    "GTQ",
    "HKD",
    "HRK",
    "HTG",
    "HUF",
    "IDR",
    "ILS",
    "IMP",
    "INR",
    "IQD",
    "IRR",
    "ISK",
    "JEP",
    "JMD",
    "JOD",
    "JPY",
    "KES",
    "KGS",
    "KHR",
    "KID",
    "KMF",
    "KRW",
    "KWD",
    "KYD",
    "KZT",
    "LAK",
    "LBP",
    "LKR",
    "LRD",
    "LSL",
    "LYD",
    "MAD",
    "MDL",
    "MGA",
    "MKD",
    "MMK",
    "MNT",
    "MOP",
    "MRU",
    "MUR",
    "MVR",
    "MWK",
    "MXN",
    "MYR",
    "MZN",
    "NAD",
    "NGN",
    "NIO",
    "NOK",
    "NPR",
    "NZD",
    "OMR",
    "PAB",
    "PEN",
    "PGK",
    "PHP",
    "PKR",
    "PLN",
    "PYG",
    "QAR",
    "RON",
    "RSD",
    "RUB",
    "RWF",
    "SAR",
    "SBD",
    "SCR",
    "SDG",
    "SEK",
    "SGD",
    "SHP",
    "SLE",
    "SLL",
    "SOS",
    "SRD",
    "SSP",
    "STN",
    "SMP",
    "SZL",
    "TJS",
    "TMT",
    "TND",
    "TOP",
    "TRY",
    "TVD",
    "TWD",
    "TZS",
    "UAH",
    "UGX",
    "UYU",
    "UZS",
    "VES",
    "VND",
    "VUV",
    "WST",
    "XAF",
    "XCD",
    "XDR",
    "XOF",
    "XPF",
    "YER",
    "ZAR",
    "ZMW",
    "ZWL",
  ];
  String selectedItem = 'ETB';
  String selectedItem1 = 'USD';
  double TextField1 = 0.0;
  double TextField2 = 0.0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double convertedValue = 0.0;

  @override
  Widget build(BuildContext context) {
    // getRate();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Currency Converter",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xfffef7ff),
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 18),

                          SingleChildScrollView(
                            child: Container(
                              child: DropdownButton<String>(
                                value: selectedItem,
                                items: currencyList
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedItem = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ), // Add spacing between the icon and text field
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 8, 12),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: controller1,
                                onChanged: (text) {
                                  setState(() {
                                    to = selectedItem1;
                                    from = selectedItem;
                                    getRate();
                                    double number = double.parse(text);
                                    controller2.text =
                                        (value * number).toStringAsFixed(2);
                                  });
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  labelText: 'Enter Amwount',
                                  filled: true,
                                  fillColor: Color(0xffefefef),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.currency_exchange, size: 55),
                        Container(
                          width: 280,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xffdfd9e2)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 18),
                          SingleChildScrollView(
                            child: Container(
                              child: DropdownButton<String>(
                                value: selectedItem1,
                                items: currencyList
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedItem1 = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ), // Add spacing between the icon and text field
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 8, 12),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: controller2,
                                onChanged: (text) {
                                  setState(() {
                                    to = selectedItem1;
                                    from = selectedItem;
                                    getRate();
                                    double number = double.parse(text);
                                    controller1.text =
                                        (value * number).toStringAsFixed(2);
                                  });
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  labelText: 'Enter Amwount',
                                  filled: true,
                                  fillColor: Color(0xffefefef),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Column(
                  children: [
                    Text("Indicative Exchange Rate"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("1 $selectedItem = $value $selectedItem1"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_rounded),
            label: 'Catagory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pan_tool),
            label: 'Tools',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6750a4),
        onTap: _onItemTapped,
      ),
    );
  }
}
