
import 'package:card_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: Container(
        width: double.infinity,
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(
              image: AssetImage(
                'images/wallet.png'
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Money',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),

                Text(
                  'Moora',
                  style: GoogleFonts.poppins(
                    color: Colors.deepOrange[300],
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),

            Text(
              'A brand new experience                     of managing your business',

              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                
              ),
              textAlign: TextAlign.center,
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.deepOrange[300],
                borderRadius: BorderRadius.circular(10.0),
              ),

              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const Home()
                    ),
                  );
                },
                child:  Text(
                  'Get Started Now!',
                  style: GoogleFonts.lato(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
