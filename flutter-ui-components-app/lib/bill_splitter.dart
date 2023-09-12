import 'package:bill_splitter_reminders/friends_list.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class BillSplitter extends StatelessWidget {
  const BillSplitter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(children: [
              CustomAppBar(),
              SizedBox(
                height: 25,
              ),
              BillCardDesign(),
              SizedBox(
                height: 20,
              ),
              FriendsCardDesign(),
            ]),
          ),
        ),
      ),
    );
  }
}

class FriendsCardDesign extends StatelessWidget {
  const FriendsCardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.10,
          width: size.height * 0.10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor,
          ),
          child: const Icon(
            Icons.search_outlined,
            size: 40,
            color: backgroundColor,
          ),
        ),
        ClipPath(
          clipper: CustomContainerDesign(),
          child: Container(
            height: size.height * 0.36,
            decoration: BoxDecoration(
              color: darkBackgroundColor,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nearby Friends',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width * 0.55,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final nearby = friends[index];
                          return Column(
                            children: [
                              Container(
                                height: size.height * 0.13,
                                width: size.width * 0.16,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: const BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50),
                                    bottom: Radius.circular(50),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.purple.shade300,
                                        child: Image.asset(
                                          'assets/${nearby['image']}',
                                        ),
                                      ),
                                      Text(
                                        nearby['name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ]),
                              ),
                              const CircleAvatar(
                                radius: 7.5,
                                backgroundColor: primaryColor,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const Text(
                    'Recently Split',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: size.height * 0.08,
                    child: ListView.builder(
                      itemCount: friends.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final friend = friends[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.orange.shade300,
                                child: Image.asset('assets/${friend['image']}'),
                              ),
                              Text(
                                friend['name'],
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

class CustomContainerDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(0, h / 3);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(w / 3.8, 0);
    path.lineTo(w / 3.8, h / 4);
    path.quadraticBezierTo(w / 4.5, h / 3, w / 5, h / 3);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BillCardDesign extends StatelessWidget {
  const BillCardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: size.height * 0.26,
              width: size.width,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Total Bill',
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$ 750.86',
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: const Text(
                          'Split Now',
                          style: TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.11,
              decoration: BoxDecoration(
                color: darkBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: backgroundColor,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Your previous split',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '\$67856',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        Positioned(
          right: 30,
          top: 20,
          child: Column(children: [
            const Text(
              'Split with',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: backgroundColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.26,
              width: size.width * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(
                  height: size.height * 0.15,
                  child: ListView.builder(
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      final friend = friends[index];
                      return Align(
                        heightFactor: 0.7,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.red.shade200,
                            child: Image.asset(
                              'assets/${friend['image']}',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.orange.shade200,
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ]),
            ),
          ]),
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Orix',
              style: TextStyle(
                color: primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Bill Splitter',
              style: TextStyle(
                color: primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        Container(
          height: size.height * 0.095,
          width: size.width * 0.18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1.5, color: Colors.white12),
          ),
          child: Column(children: [
            Container(
              height: size.height * 0.06,
              width: size.width,
              decoration: const BoxDecoration(
                  color: darkBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Image.asset('assets/profile.png'),
            ),
            Container(
              height: size.height * 0.03,
              decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              alignment: Alignment.center,
              child: const Text(
                'John',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
