import 'package:coffie/model/product_model.dart';
import 'package:coffie/utills/app_colors.dart';
import 'package:flutter/material.dart';



class ProductCard extends StatelessWidget {
  final ProductModel model;
  const ProductCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(image: AssetImage(model.productImage),fit: BoxFit.fill)
                  ),
                ),

                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(18))
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 5,),
                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                        const SizedBox(width: 5,),
                        Text(model.productRating.toString(),style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Text(model.productName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text(model.productDescription,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),

            const SizedBox(height: 10,),
            Row(
              children: [
                Text('₹${model.productPrice}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.add,color: Colors.white,),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
