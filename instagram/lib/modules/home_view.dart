import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List storisreels = [
    {
      'name': 'jonnalea',
      'image': 'assets/images/photo_2023-09-09_10-10-08.jpg',
      'first': 0,
    },
    {
      'name': 'alisa',
      'image': 'assets/images/photo_2023-09-09_10-10-12.jpg',
    },
    {
      'name': 'kanatbek00',
      'image': 'assets/images/photo_2023-09-09_10-10-14.jpg',
    },
    {
      'name': 'kanatbek00',
      'image': 'assets/images/photo_2023-09-09_10-10-16.jpg',
    },
    {
      'name': 'aziza_z',
      'image': 'assets/images/photo_2023-09-09_10-10-19.jpg',
    },
    {
      'name': 'aleksei',
      'image': 'assets/images/photo_2023-09-09_10-10-19.jpg',
    },
    {
      'name': 'aidana',
      'image': 'assets/images/photo_2023-09-09_10-10-22.jpg',
    },
    {
      'name': 'nargiza',
      'image': 'assets/images/photo_2023-09-09_10-10-24.jpg',
    },
    {
      'name': '_kanat',
      'image': 'assets/images/photo_2023-09-09_10-10-25.jpg',
    },
    {
      'name': 'erhis_05',
      'image': 'assets/images/photo_2023-09-09_10-10-28.jpg',
    },
    {
      'name': '_car_45',
      'image': 'assets/images/photo_2023-09-09_10-10-29.jpg',
    },
    {
      'name': 'gulgigit',
      'image': 'assets/images/photo_2023-09-09_10-10-38.jpg',
    },
    {
      'name': 'abdybek_u',
      'image': 'assets/images/photo_2023-09-09_10-10-38.jpg',
    },
    {
      'name': '_bekbolot',
      'image': 'assets/images/photo_2023-09-09_10-10-42.jpg',
    },
    {
      'name': 'photo',
      'image': 'assets/images/photo_2023-09-09_10-10-45.jpg',
    },
    {
      'name': 'home_',
      'image': 'assets/images/photo_2023-09-09_10-10-47.jpg',
    },
    {
      'name': 'foto_99',
      'image': 'assets/images/photo_2023-09-09_10-10-51.jpg',
    },
    {
      'name': 'bekturgan_',
      'image': 'assets/images/photo_2023-09-09_10-10-56.jpg',
    },
    {
      'name': '_roza',
      'image': 'assets/images/photo_2023-09-09_10-11-05.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(children: [
          SvgPicture.asset('assets/icons/Instagram_logo.svg', width: 100),
          const Icon(Icons.expand_more)
        ]),
        actions: [
          SvgPicture.asset("assets/icons/Like.svg", width: 25),
          const SizedBox(
            width: 15,
          ),
          SvgPicture.asset("assets/icons/Messenger.svg", width: 25),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: storisreels
                    .map(
                      (e) => e['first'] == 0
                          ? Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                e['image'],
                                              ),
                                            )),
                                      ),
                                      Text(
                                        e['name'],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 16,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Colors.red,
                                              Colors.pink
                                            ]),
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 1.5),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                e['image'],
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    e['name'],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: storisreels.length,
                itemBuilder: (ctx, index) {
                  final reels = storisreels[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: SizedBox(
                      height: 560,
                      // color: Colors.teal,
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: AssetImage(
                                    reels['image'],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(reels['name']),
                              Spacer(),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset(
                            reels['image'],
                            width: double.infinity,
                            height: 440,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset("assets/icons/Like.svg",
                                  width: 24),
                              SizedBox(width: 10),
                              SvgPicture.asset("assets/icons/Comment.svg",
                                  width: 24),
                              SizedBox(width: 10),
                              SvgPicture.asset("assets/icons/Share.svg",
                                  width: 24),
                              Spacer(),
                              SvgPicture.asset("assets/icons/Bookmark.svg",
                                  width: 24),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage(reels['image']),
                                radius: 10,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Нравится',
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'turat_alybeav и ещё 4 789',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Home.svg', width: 25),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Search.svg', width: 25),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Search.svg', width: 25),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Reels.svg', width: 25),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/User.svg', width: 25),
                label: ""),
          ]),
    );
  }
}
