import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:turf_booking/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Home_turf(),
  ));
}

class Home_turf extends StatefulWidget {
  @override
  State<Home_turf> createState() => Home_turfState();
}

class Home_turfState extends State<Home_turf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(" BOOK YOUR MATCH",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white)),
            ),
            floating: true,
            pinned: false,
            actions: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [Icon(Icons.location_on), Text("Kakkanad, Kochi ")],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              // Padding(padding: EdgeInsets.all(10),child: Center(
              //   child: Text("kakkanad, Kochi > "
              //       ),
              // ),)
            ],
            bottom: AppBar(
                title: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
              margin: EdgeInsets.all(9),
              color: Colors.white,
              height: 30,
              width: double.infinity,
              child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                     hintText: 'Find Turf,Tournament,Slot Availability',
                      hintStyle: TextStyle(color: Colors.lightGreen,fontSize:15),
                      //label:Text("Find Turf,Tournament,Slot Availability",style: TextStyle(fontSize: 15,)),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.notifications)),
                  //onTap: ,
              )),
            ),
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CarouselSlider(
                      items: [
                        Image.asset(fit:BoxFit.cover, "assets/image/turf3.png",),
                        Image.asset(fit: BoxFit.cover, "assets/image/turf4.png"),
                        Image.asset(fit: BoxFit.cover,"assets/image/turf5.png"),
                        Image.asset(fit: BoxFit.cover,"assets/image/turf6.png"),
                        Image.asset(fit: BoxFit.cover,"assets/image/turf7.png"),
                      ],
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 16 / 5,
                        viewportFraction: 13,
                        initialPage: 2,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.easeInCubic,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.7,
                        onPageChanged: (index, reason) {},
                        scrollDirection: Axis.vertical,
                      )),
                ),
                // Image.network(
                //     "https://media.istockphoto.com/id/1150952747/photo/close-up-of-legs-and-feet-of-football-player-in-blue-socks-and-shoes-running-and-dribbling.jpg?s=612x612&w=0&k=20&c=QQFpYIjyB7ciSfIootizxFo01A005q6SZqBH4YrJJ-8="),
                // SizedBox(
                //   height: 15,
                // ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CategoriesGrid(),
              ),
            ]),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingNavbar(
          unselectedItemColor: Colors.black87,selectedItemColor: Colors.grey,padding: EdgeInsets.all(10),
          selectedBackgroundColor: Colors.white,
          backgroundColor: Colors.lightGreen,
          onTap: (int val) {
            //returns tab id which is user tapped
          },
          currentIndex: 0,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.book_online, title: 'Book Slot'),
            FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
      ),
    );
  }
}

class CategoriesGrid extends StatelessWidget {
  List<String> images = [
    "assets/image/first ball follow Solo yellow.png",
    "assets/image/team football Team.png",
    "assets/image/criket kit cricket.png",
    "assets/image/ball yellowish Football.png",
    "assets/image/football-water Club.png",
    "assets/image/stadium Tournaments.png",
    "assets/image/team india Events.png",
    "assets/image/Offer.png",
    "assets/image/football leg hand timig.png",
  ];
  List<String> names = [
    "Solo",
    "Team",
    "Cricket",
    "Foot ball",
    "Club",
    "Tournaments",
    "Events",
    "Offers",
    "Timing",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.height * .6,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index])))),
              SizedBox(
                height: 3,
              ),
              Text(
                names[index],
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ],
          );
        });
  }
}
