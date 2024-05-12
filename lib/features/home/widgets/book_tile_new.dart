import 'package:cubit_test/extension.dart';
import 'package:cubit_test/repositories/models/trade_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BookTileNew extends StatelessWidget {
  const BookTileNew({Key? key, required this.order}) : super(key: key);

  final TradeOrder order;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order.giving.name,
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            18.height,
            Text("обменяю на...",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF4A4A4A))),
            18.height,
            SizedBox(
                // width: double.infinity,
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/611X8GI7hpL._AC_UF1000,1000_QL80_.jpg',
                            fit: BoxFit.fill),
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/81HntONlwgL._AC_UF1000,1000_QL80_DpWeblab_.jpg',
                            fit: BoxFit.fill),
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/71rpa1-kyvL._AC_UF1000,1000_QL80_.jpg',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}