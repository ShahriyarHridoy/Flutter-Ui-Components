import 'package:bill_splitter_reminders/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LastReminderLeftContainer extends StatelessWidget {
  const LastReminderLeftContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: size.height * 0.45,
              width: size.width * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.calendar_month,
                        color: darkBackgroundColor,
                      ),
                    ),
                    const Text(
                      '3 days left',
                      style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Splitting with',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.16,
                      child: ListView(children: [
                        friendsBillSplit(
                            size.height, 'profile.png', 'Cody', 300),
                        const SizedBox(
                          height: 5,
                        ),
                        friendsBillSplit(
                            size.height, 'profile1.png', 'Jenny', 200),
                        const SizedBox(
                          height: 5,
                        ),
                        friendsBillSplit(
                            size.height, 'profile2.png', 'John', 400),
                      ]),
                    ),
                    const Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      '\$348.48',
                      style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ]),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: size.height * 0.12,
              width: size.width * 0.42,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.calendar_month,
                    color: darkBackgroundColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Splitting with',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '\$750.00',
                      style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
        Positioned(
          bottom: 80,
          left: 25,
          child: Container(
            height: size.height * 0.1,
            width: size.width * 0.3,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              child: Container(
                height: size.height * 0.08,
                width: size.width * 0.26,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Pay Now',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget friendsBillSplit(
          double size, String image, String name, double price) =>
      Container(
        height: size * 0.05,
        decoration: const BoxDecoration(
            color: darkBackgroundColor,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(40),
              left: Radius.circular(40),
            )),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.purple.shade300,
              child: Image.asset('assets/$image'),
            ),
            Text(
              name,
              style: const TextStyle(
                color: primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '\$$price',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
}
