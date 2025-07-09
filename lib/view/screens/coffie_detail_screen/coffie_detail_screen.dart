import 'package:coffie/utills/app_colors.dart';
import 'package:coffie/view/screens/coffie_detail_screen/coffie_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class CoffieDetailScreen extends StatelessWidget {
  const CoffieDetailScreen({super.key,});

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<CoffeeDetailController>();

    final size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new_rounded)),
            Spacer(),
            Text('Detail'),
            Spacer(),
            SvgPicture.asset('assets/icons/Heart.svg')
          ],
        ),
      ),

     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           SizedBox(
             width: size.width,
             height: size.height * 0.24,
             child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Image.asset(controller.product.productImage,fit: BoxFit.cover,)),
           ),

           const SizedBox(height: 10,),

           Text(controller.product.productName,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
           Row(
             children: [
               Text('Ice/Hot',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12,color: Colors.grey),),

               Spacer(),

               _iconbox('assets/images/bike.png'),

               const SizedBox(width: 10,),

               _iconbox('assets/images/coffee.png'),

               const SizedBox(width: 10,),

               _iconbox('assets/images/pack.png'),
             ],
           ),

           const SizedBox(height: 10,),

           Row(
             children: [
               SvgPicture.asset('assets/icons/Rating.svg'),
               Text(controller.product.productRating.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
               Text('(230)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
             ],
           ),

           const SizedBox(height: 20,),

           Divider(
             color: Colors.grey.withOpacity(0.3),
             height: 1,
             indent: 20,
             endIndent: 20,
           ),

           const SizedBox(height: 20,),

           Text('Descrption',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
           Text(controller.product.productDescription,style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.grey),),

           const SizedBox(height: 20,),

           Text('Size',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),


           const SizedBox(height: 20,),

           Row(
             children: [
               Expanded(
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: Colors.grey
                     ),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: const Text('S',style: TextStyle(fontWeight: FontWeight.bold),)),
                 ),
               ),

               const SizedBox(width: 20,),

               Expanded(
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                   decoration: BoxDecoration(
                       border: Border.all(
                           color: Colors.grey
                       ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: const Text('M',style: TextStyle(fontWeight: FontWeight.bold),)),
                 ),
               ),

               const SizedBox(width: 20,),

               Expanded(
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                   decoration: BoxDecoration(
                       border: Border.all(
                           color: Colors.grey
                       ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: const Text('L',style: TextStyle(fontWeight: FontWeight.bold),)),
                 ),
               ),
             ],
           )

         ],
       ),
     ),

      bottomSheet: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * 0.12,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price',style: TextStyle(color: Colors.grey),),
                    Text('₹${controller.product.productPrice}',style: TextStyle(color: AppColors.primary,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  width: size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ),

              ],
            ),


          ],
        ),
      )


    );
  }
}

Widget _iconbox(String image) {
  return  Container(
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
    ),
    padding: EdgeInsets.all(5),
    child: Image.asset(image,height: 35,),
  );

}
