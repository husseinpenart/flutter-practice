import 'package:basics/widget/person.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Person(
                name: 'Max Berktold',
                age: '21',
                country: 'germany',
                job: 'flutter expert',
                picUrl:
                    'https://static.wixstatic.com/media/e38214_2415b962d0244310bb630e9cb6ac7010~mv2.jpg/v1/fill/w_388,h_372,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/IMG_5274_edited_edited_edited_edited.jpg',
              ),
              const SizedBox(height: 20),
              Person(
                picUrl:
                    'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
                name: 'Hussein Asadi',
                age: '29',
                country: 'Iran',
                job: 'Software engineer',
              ),
              const SizedBox(height: 20),

              Person(
                picUrl:
                    'https://static.vecteezy.com/system/resources/thumbnails/074/185/139/small/man-in-gas-mask-and-blue-jacket-image-2023-photo.jpg',
                name: 'Maryam Noeli',
                age: '25',
                country: 'America',
                job: 'Software Architector',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
