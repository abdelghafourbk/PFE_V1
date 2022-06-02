import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextButton(
        style: TextButton.styleFrom(
            primary: Colors.black,
            padding: const EdgeInsets.all(5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white,
            fixedSize: const Size.fromHeight(55)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 53,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xff2C3A4B)),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff6D5FFD),
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
