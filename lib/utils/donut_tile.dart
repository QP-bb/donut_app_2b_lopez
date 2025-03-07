import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  //dynamic = puede ser cualquier tipo de dato
  final dynamic donutColor;
  final String imageName;

  const DonutTile(
    {super.key, 
    required this.donutFlavor, 
    required this.donutStore,
    required this.donutPrice, 
    this.donutColor, 
    required this.imageName}
    );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: <Widget>[
            //Price Tag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: Text('\$$donutPrice',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                  color: donutColor[800])),
                    ),
                 ],
            ),
            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical:12, horizontal: 34),
              child: Image.asset(imageName),
            ),
            //Donut Text
            Text(donutFlavor,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
            //Texto con espacio
            const SizedBox(height: 4),
            //Agregar todo el texto
            Text(
              donutStore,
              style: TextStyle(color: Colors.grey[600]),
            ),
              Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite_border, color: Colors.pink[400]),
                ],
              ),
            ),
            //Love icon + add button
          ],
        ),
      ),
    );
  }
}