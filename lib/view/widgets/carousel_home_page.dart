import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//TODO Implemtar get de imagens do carousel diretamente do banco de dados

class CarouselHomePage extends StatelessWidget {
  const CarouselHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Padding> itens = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/carousel/image_carousel.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/carousel/twt_carousel.png',
            fit: BoxFit.cover,
          ),
        ),
      )
    ];

    return CarouselSlider(
      items: itens,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),

      ),
    );
  }
}
