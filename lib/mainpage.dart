import 'package:flutter/material.dart';
import 'package:dicoding_project_tani/login.dart';

class MainPage extends StatelessWidget {
  const MainPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person_add_alt_1_rounded),
          tooltip: 'Regist Icon',
          onPressed: (){},
        ),
       ],
       leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
       }, 
       icon: Icon(Icons.arrow_back_ios_rounded)),
       iconTheme: IconThemeData(
         color: Colors.black,
       ),
      ),
      extendBodyBehindAppBar:true,
      body: Container (
        decoration: BoxDecoration(
          color: Color.fromARGB(239,152,247,175),
        ), 
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 65,
                bottom: 10,
              ),
              child:Column(
                children: [ Text(
                  'Welcome to Tani Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255,2,62,74),
                  ),
                ), 
                Text(
                  'Tani Shop adalah sebuah aplikasi tempat berbelanja kebutuhan pertanian dan perkebunan kita semua ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nanum',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255,2,62,74),
                  ),
                ), 
                ]
              ),  
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color:Color.fromARGB(255,2,62,74),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Open Everyday',
                        style: TextStyle(
                          fontFamily: 'Staatliches' ,
                          color:Color.fromARGB(255,2,62,74),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color:Color.fromARGB(255,2,62,74),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '09:00 AM - 20:00 PM',
                        style: TextStyle(
                          fontFamily: 'Staatliches' ,
                          color:Color.fromARGB(255,2,62,74),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/1.gif',scale: 0.2 ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/2.gif',scale: 0.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/3.gif',scale: 0.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/4.gif',scale: 0.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/5.gif',scale: 0.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:55),
              height: 50,
              width: 150 ,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                }, 
              child: Text('MULAI'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Color.fromARGB(255,2,62,74),
              ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(239,152,247,175),
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 0.5
              )
            )
          ),
          child: Text(
            '1915016078_Ahmad Fadila',
            textAlign: TextAlign.center,
            style: TextStyle(
               fontFamily: 'Oxygen',
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black
            ),
          ),
        )
      ),
    );
  }
}