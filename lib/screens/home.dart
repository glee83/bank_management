
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Home extends StatelessWidget {

  const Home({ Key? key }) : super(key: key);
 
  List<T> map<T>(List list, Function handler){
    List<T> result = [];
    for (var i = 0; i<= list.length; i++){
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        
        child: ListView(
          physics: const ClampingScrollPhysics(),

          children: <Widget> [
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget> [
                  const Icon(
                    Icons.menu
                  ),

                  Container(
                    height: 60.0,
                    width:  60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('images/glee.jpg')
                      )
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 8.0,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    'Good Morning',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Text(
                    'Glee Albert',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 200.0,
              width: double.infinity,
              
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: Colors.teal,
              ),

              child: Stack(
                children: <Widget> [
                  Positioned(
                    top: 0,
                    left: 0,
                    
                    child: Container(
                      height: 70.0,
                      width: 70.0,

                      decoration: BoxDecoration(
                        color: Colors.deepOrange[300],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          topLeft: Radius.circular(20.5),
                          // bottomLeft: Radius.circular(10),
                          
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,

                      decoration: BoxDecoration(
                        color: Colors.deepOrange[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(20.5)
                        )
                      ),
                    ),
                  ),

                  Positioned(
                    top: 30.0,
                    left: 20.0,
                    child:  Text(
                      'Card Number',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),

                    ),
                  ),
                  
                  Positioned(
                    top: 45.0,
                    left: 20.0,
                    child:  Text(
                      '233 4353 8923 0011',
                      style: GoogleFonts.pacifico(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),

                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:  <Widget> [
                        const Image(
                          width: 100.0,
                          image: AssetImage('images/card_logo.png'),
                        ),

                        Positioned(
                          top: -10,

                          child: Text(
                            'master card',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 150.0,
                    left: 20.0,
                    child:  Text(
                      'Card Holder',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),

                    ),
                  ),

                  Positioned(
                    bottom: 10.0,
                    right: 20.0,
                  
                    child:  Column(
                      children: [
                        Text(
                          'expired date',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),

                        ),
                        Text(
                          '10/24',
                          style: GoogleFonts.pacifico(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Operations',
                    style: GoogleFonts.lato(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900,
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 110.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     
                      children:  <Widget>[
                        const Icon(
                          Icons.all_inclusive_outlined,
                          color: Colors.white,
                          size: 50.0,

                        ),

                        Text(
                          'Money',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        ),

                        Text(
                          'Transfer',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color: Colors.white
                          )
                        )

                      ]
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     
                      children:  <Widget>[
                        const Icon(
                          Icons.money,
                          color: Colors.teal,
                          size: 50.0,

                        ),

                        Text(
                          'Bank',
                          style: GoogleFonts.poppins(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        ),

                        Text(
                          'Withdraws',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color: Colors.teal[500]
                          )
                        )

                      ]
                    ),
                  ),
                  Container(
                    width: 100,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     
                      children:  <Widget>[
                        const Icon(
                          Icons.query_stats_outlined,
                          color: Colors.teal,
                          size: 50.0,

                        ),

                        Text(
                          'Insights',
                          style: GoogleFonts.poppins(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        ),

                        Text(
                          'Tracking',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color: Colors.teal[500]
                          )
                        )
                      ]
                    ),
                  )
                ],
              ),
            ),

            Container(
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
                      'Uber',
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
                              'Uber Ride',
                              style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[900]
                              ),
                            ),
                            Text(
                              '1st Apr 2022',
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
                          "-23214",

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
            ),

            const SizedBox(
              height: 4.0,
            ),
              
            Container(
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
                      'Nike',
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
                              'Uber Ride',
                              style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[900]
                              ),
                            ),
                            Text(
                              '1st Apr 2022',
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
                          "-23214",

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
            )
              
            
          ],
        ),
      ),

    
    );
  }
}