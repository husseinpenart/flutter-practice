import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/images.jpg'),
            ),
            Stack(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://www.talab.org/wp-content/uploads/2024/01/979929446-talab-org.jpg',
                    ),
                  ),
                ),
                Positioned(top: 80, child: Text("Avatar Image")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
