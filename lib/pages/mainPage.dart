import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:vintech/globals.dart';
import 'package:vintech/partials/card.dart';
import 'package:vintech/partials/customCarousel.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: scheme.surface,
              foregroundImage:
                  const AssetImage("assets/images/vintechLogo.png"),
              radius: 28,
            ),
            Text(
              "VINTECH",
              style: TextStyle(letterSpacing: 2, fontSize: 32, color: fg_color),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const CustomCarousel(
            items: [1, 2, 3, 4, 5],
          ),
          const SizedBox(
            height: 5,
          ),
          _buildProdutos()
        ],
      ),
    );
  }

  Widget _buildProdutos() {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: 'Produtos',
        labelStyle: const TextStyle(fontSize: 24),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
