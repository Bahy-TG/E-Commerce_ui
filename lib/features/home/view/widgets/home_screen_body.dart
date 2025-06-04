import 'package:ecommerce_ui/core/data/product_list.dart';
import 'package:ecommerce_ui/features/details/view/screen/details_screen.dart';
import 'package:ecommerce_ui/features/home/view/widgets/product_card.dart';
import 'package:flutter/material.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .85,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
           return GestureDetector(
             onTap: ()=> context.pushNav(DetailsScreen(productModel: productList[index],)),
             child: ProductCard(
                productModel: productList[index],
              ),
           );
          }),
    );
  }
}
extension Nav on BuildContext{
  pushNav(Widget screen){
    Navigator.push(this, MaterialPageRoute(builder:(context)=> screen));
  }
}