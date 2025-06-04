import 'package:ecommerce_ui/features/details/view/widgets/details_app_bar.dart';
import 'package:ecommerce_ui/features/details/view/widgets/details_screen_body.dart';
import 'package:ecommerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailsAppBar(),
      body: DetailsScreenBody(productModel: productModel,),
    );
  }
}
