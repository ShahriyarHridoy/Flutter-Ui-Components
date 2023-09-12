import 'package:bill_splitter_reminders/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LastReminderRightContainer extends StatelessWidget {
  const LastReminderRightContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.18,
          width: size.width * 0.34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.purple.shade300,
                  child: Image.asset(
                    'assets/profile1.png',
                  ),
                ),
                const Text(
                  'Lisa',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  '20 days left',
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
              ]),
        ),
        const SizedBox(height: 12),
        Container(
          height: size.height * 0.25,
          width: size.width * 0.34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.purple.shade300,
                  child: Image.asset(
                    'assets/profile2.png',
                  ),
                ),
                const Text(
                  'Cody',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Split with',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: size.height * 0.05,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(10, 0, 0),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.purple.shade300,
                            child: Image.asset(
                              'assets/profile2.png',
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.purple.shade300,
                          child: Image.asset(
                            'assets/profile.png',
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(-10, 0, 0),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.purple.shade300,
                            child: Image.asset(
                              'assets/profile1.png',
                            ),
                          ),
                        ),
                      ]),
                ),
                const Text(
                  '\$440.48',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: size.height * 0.12,
          width: size.width * 0.34,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.30,
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
      ],
    );
  }
}
