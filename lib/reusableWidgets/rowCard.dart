
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomCard extends StatelessWidget {

  String brandTitle;
  String title;
  String subTitle;
  String amount;

  CustomCard({
    Key? key,
    required this.brandTitle,
    required this.title,
    required this.subTitle,
    required this.amount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        // image: const DecorationImage(
          
        //   image: AssetImage('images/nike.png')
        // ),
      ),

      child: Row(
        children:  <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              brandTitle,
              style: GoogleFonts.satisfy(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30.0
              )
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900]
                      ),
                    ),
                    Text(
                      subTitle,
                      style: GoogleFonts.lato(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade500
                      ),
                    ),
                    
                    
                  ]
                ),
              ),
              
              Container(
                margin: const EdgeInsets.only(left: 80.0),
                child: Text(
                  amount,

                  style: GoogleFonts.pacifico(
                    fontSize: 25.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.teal
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}