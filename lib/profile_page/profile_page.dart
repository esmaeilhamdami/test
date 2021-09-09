import 'package:flutter/material.dart';
import 'package:flutter_profile_page_03/profile_page/tab_items/front_page.dart';
import 'package:flutter_profile_page_03/profile_page/tab_items/second_page.dart';
import 'package:flutter_profile_page_03/profile_page/tab_items/third_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List list = [FrontPage(), SecondPage(), ThirdPage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                        'https://www.bluewhaleportraits.com/wp-content/uploads/2019/03/Tips-of-Portrait-Photography-1.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peter McKinnon',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Photographer',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    size: 26,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Photography is the story I fail to put into words. HMU if you want to collaborate!',
                style:
                    TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Posts',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '203',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '100k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '80k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 26),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.blue[800],
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('dasdasd')));
                  },
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.apps_outlined,
                            size: 30,
                            color: index == 0 ? Colors.blue[800] : Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: index == 0
                                ? Colors.blue[800]
                                : Colors.grey[900],
                            height: 0.5,
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.api_outlined,
                            size: 30,
                            color: index == 1 ? Colors.blue[800] : Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: index == 1
                                ? Colors.blue[800]
                                : Colors.grey[900],
                            height: 0.5,
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_pin_outlined,
                            size: 30,
                            color: index == 2 ? Colors.blue[800] : Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: index == 2
                                ? Colors.blue[800]
                                : Colors.grey[900],
                            height: 0.5,
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              list.elementAt(index),
            ],
          ),
        ),
      ),
    );
  }
}
