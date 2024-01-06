import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: Colors.teal,
        appBar: AppBar(  
             backgroundColor: Colors.teal,
             elevation: 0,
              ),
        
        
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'Shaiful Islam',
                style: TextStyle(fontSize: 24, fontFamily: 'Arail', color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer'.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Arail',
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                ),
              ),
               Text(
                '&'.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Arail',
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                ),
              ),
               Text(
                'Compitative Programmer'.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Arail',
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.teal.shade400,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 20,
              ),
               Padding(
                 padding: EdgeInsets.only(left: 20,right: 20),
                child: Card(                 
                  margin: EdgeInsets.symmetric(horizontal: 20),             
                  child: ListTile(                   
                      leading:Icon(
                          Icons.phone,
                          color: Colors.teal,
                          size: 24,
                        ) ,
                        title:     Text(
                          '+01756242522',
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                        ),
                  ),
                   
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              Padding(
                padding:EdgeInsets.only(left: 20,right: 20),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                          size: 24,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'islamlslamshaiful26@gmail.com',
                          style: TextStyle(fontSize: 15, color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),
              
                Padding(
                padding:EdgeInsets.only(left: 20,right: 20),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.corporate_fare_rounded,
                          color: Colors.teal,
                          size: 24,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Dot Com Systems',
                          style: TextStyle(fontSize: 15, color: Colors.teal),
                        ),
                      ],
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
