import 'package:coffie/common/product_card.dart';
import 'package:coffie/utills/app_colors.dart';
import 'package:coffie/view/screens/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.find<DashboardController>();

    return DefaultTabController(
      length: 4,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height * 0.42,
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.32,
                        color: AppColors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Location',style: TextStyle(color: Colors.white60,),),
                                Row(
                                  children: [
                                    Text('Bilzen, Tanjungbalai',style: TextStyle(color: Colors.white,fontSize: 16),),
                                    const SizedBox(width: 5,),
                                    Icon(Icons.keyboard_arrow_down,color: Colors.white70,size: size.width*0.05,)
                                  ],
                                ),

                                const SizedBox(height: 20,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [AppColors.black ,Color(0xFF3A3A3A)],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.transparent,
                                            prefixIcon: Icon(Icons.search, color: Colors.white),
                                            hintText: 'Search coffie',
                                            hintStyle: TextStyle(color: Colors.white70),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.primary,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      padding: EdgeInsets.all(15),
                                      child: SvgPicture.asset('assets/icons/Filter.svg',color: Colors.white,),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        top: size.height * 0.22,
                        right: 0,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          width: size.width,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage('assets/images/Banner.png'))
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ButtonsTabBar(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: AppColors.primary,
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      unselectedBackgroundColor: Colors.white,
                      tabs: [
                        Tab(
                          text: 'All Coffiee',
                        ),
                        Tab(
                          text: 'Machiato',
                        ),
                        Tab(
                          text: 'Latte',
                        ),
                        Tab(
                          text: 'Americano',
                        ),

                      ]),
                ),

                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: size.width / (size.height * 0.68),
                    ),
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
