import 'package:domal/Components/large_button.dart';
import 'package:domal/Screens/HomeScreen/components/project_card.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 50,
          color: kDarkBlueColor,
        ),
      ),
      drawer: Drawer(
        child: Container(
          margin: EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: kDarkBlueColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage('assets/Images/person.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "John Due",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      "Johndue@gmail.com",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.share,
                    size: 30,
                    color: kDarkBlueColor,
                  ),
                  title: Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.feedback_outlined,
                    size: 30,
                    color: kDarkBlueColor,
                  ),
                  title: Text(
                    'Feedback',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: FaIcon(
                    FontAwesomeIcons.youtube,
                    size: 30,
                    color: kDarkBlueColor,
                  ),
                  title: Text(
                    'Help Us',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Logout",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w400)),
                    ),
                    onPressed: () async{
                      SharedPreferences pref = await SharedPreferences.getInstance();
                      pref.setString("userid","");
                      // pref.setString("name", "");
                      pref.setBool("islogin", false);


                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/login');
                      //Navigator.of(context).pushNamed('/TournamentList');
                    },
                    splashColor: Colors.red.shade900,
                    color: Colors.red,
                    textColor: Colors.white,
                  )
                ],
              ),
              // LargeButton(
              //   lable: 'Logout',
              //   backgrooundColor: kDarkBlueColor,
              // )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        title: Text('Home Page'),
        centerTitle: true,
      ),
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ProjectCard();
            },
          ),
        ),
      ),
    );
  }
}
