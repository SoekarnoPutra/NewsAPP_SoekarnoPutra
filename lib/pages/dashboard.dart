import 'package:berita/components/business.dart';
import 'package:berita/components/home.berita.dart';
import 'package:berita/components/profile.dart';
import 'package:berita/components/sport.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/news.provider.dart';

class Dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    "assets/otomotif.png",
    "assets/sport.png",
    "assets/business.png",
    "assets/image.png",
  ];

  List titles = ["Otomotive", "Sport", "Business", "Profile"];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    Provider.of<NewsProvider>(context, listen: false).getTopNews();

    return Consumer<NewsProvider>(
      builder: (BuildContext context, news, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Dashboard'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            ],
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.indigo, Colors.deepPurple],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sidebar Content',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Beranda"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Pengaturan"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.money),
                    title: Text("Berlanganan"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.people_alt_outlined),
                    title: Text("Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log Out"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.indigo, Colors.deepPurple],
                ),
              ),
              height: height,
              width: width,
              child: Column(
                children: [
                  Container(
                    height: height * 0.25,
                    width: width,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/image.png"),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Soekarno Putra",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Last Update: 20 Januari 2024",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white54,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    height: height * 0.75,
                    width: width,
                    child: GridView.builder(
                      padding: EdgeInsets.all(16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 25,
                      ),
                      shrinkWrap: true,
                      itemCount: imgData.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (titles[index] == "Otomotive") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => News(),
                                ),
                              );
                            } else if (titles[index] == "Sport") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sport(),
                                ),
                              );
                            } else if (titles[index] == "Business") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Business(),
                                ),
                              );
                            } else if (titles[index] == "Profile") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  imgData[index],
                                  width: 80,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  titles[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
