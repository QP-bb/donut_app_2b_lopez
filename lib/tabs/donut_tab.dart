import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale =[
    //[donutFlavor, donutPrice, donutColor, imageName],
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"]];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Para acomodar elementos en Cuadricula
    return GridView.builder(
      //Cuantos elementos tengo
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      //Organiza como distribuir elementos en la cuadricula
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      }
    );
  }
}