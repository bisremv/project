// import 'package:flutter/material.dart';
//
//
// class ToolsCards extends StatelessWidget {
//   String selected = 'ETB';
//   var currencyList = <String>[
//     "USD",
//     "AED",
//     "AFN",
//     "ALL",
//     "AMD",
//     "ANG",
//     "AOA",
//     "ARS",
//     "AUD",
//     "AWG",
//     "AZN",
//     "BAM",
//     "BBD",
//     "BDT",
//     "BGN",
//     "BHD",
//     "BIF",
//     "BMD",
//     "BND",
//     "BOB",
//     "BRL",
//     "BSD",
//     "BTN",
//     "BWP",
//     "BYN",
//     "BZD",
//     "CAD",
//     "CDF",
//     "CHF",
//     "CLP",
//     "CNY",
//     "COP",
//     "CRC",
//     "CUP",
//     "CVE",
//     "CZK",
//     "DKK",
//     "DOP",
//     "DZD",
//     "EGP",
//     "ERN",
//     "ETB",
//     "EUR",
//     "FJD",
//     "FKP",
//     "FOK",
//     "GBP",
//     "GEL",
//     "GGP",
//     "GHS",
//     "GIP",
//     "GMD",
//     "GNF",
//     "GTQ",
//     "HKD",
//     "HRK",
//     "HTG",
//     "HUF",
//     "IDR",
//     "ILS",
//     "IMP",
//     "INR",
//     "IQD",
//     "IRR",
//     "ISK",
//     "JEP",
//     "JMD",
//     "JOD",
//     "JPY",
//     "KES",
//     "KGS",
//     "KHR",
//     "KID",
//     "KMF",
//     "KRW",
//     "KWD",
//     "KYD",
//     "KZT",
//     "LAK",
//     "LBP",
//     "LKR",
//     "LRD",
//     "LSL",
//     "LYD",
//     "MAD",
//     "MDL",
//     "MGA",
//     "MKD",
//     "MMK",
//     "MNT",
//     "MOP",
//     "MRU",
//     "MUR",
//     "MVR",
//     "MWK",
//     "MXN",
//     "MYR",
//     "MZN",
//     "NAD",
//     "NGN",
//     "NIO",
//     "NOK",
//     "NPR",
//     "NZD",
//     "OMR",
//     "PAB",
//     "PEN",
//     "PGK",
//     "PHP",
//     "PKR",
//     "PLN",
//     "PYG",
//     "QAR",
//     "RON",
//     "RSD",
//     "RUB",
//     "RWF",
//     "SAR",
//     "SBD",
//     "SCR",
//     "SDG",
//     "SEK",
//     "SGD",
//     "SHP",
//     "SLE",
//     "SLL",
//     "SOS",
//     "SRD",
//     "SSP",
//     "STN",
//     "SMP",
//     "SZL",
//     "TJS",
//     "TMT",
//     "TND",
//     "TOP",
//     "TRY",
//     "TVD",
//     "TWD",
//     "TZS",
//     "UAH",
//     "UGX",
//     "UYU",
//     "UZS",
//     "VES",
//     "VND",
//     "VUV",
//     "WST",
//     "XAF",
//     "XCD",
//     "XDR",
//     "XOF",
//     "XPF",
//     "YER",
//     "ZAR",
//     "ZMW",
//     "ZWL",
//   ];
//   ToolsCards(this.selected, this.route, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             SizedBox(width: 18),
//
//             DropdownButton<String>(
//               value: selected,
//               items: currencyList
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(
//                     value,
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedItem = value!;
//                 });
//               },
//             ),
//             SizedBox(
//               width: 10,
//             ), // Add spacing between the icon and text field
//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.fromLTRB(0, 0, 8, 12),
//                 child: TextField(
//                   style: TextStyle(color: Colors.black),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffefefef),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                       borderSide: BorderSide.none,
//                     ),
//                     hintText: 'Enter Amount',
//                     hintStyle: TextStyle(color: Colors.grey),
//                     contentPadding:
//                     EdgeInsets.symmetric(horizontal: 10),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     ;
//   }
// }
//
