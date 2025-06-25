import 'package:coffie/utills/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
                    image: DecorationImage(image: AssetImage('assets/images/coffee1.png'),fit: BoxFit.fill)
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
                        Text('4.8',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                )

              ],
            ),
            const SizedBox(height: 10,),
            Text('Caffe Mocha',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text('Deep Foam',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

            const SizedBox(height: 10,),
            Row(
              children: [
                Text('₹ 450',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
