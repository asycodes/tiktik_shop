import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final bool isFlashSale;

  const ProductItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isFlashSale = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: isFlashSale ? 600 : 200,
      width: isFlashSale ? 120 : MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Image.network(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.redAccent,
                  fontSize: 14,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
