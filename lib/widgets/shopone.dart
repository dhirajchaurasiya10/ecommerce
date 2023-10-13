import 'package:ecommerce/widgets/product_cart.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   // child: Text("category",style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
        // ),
        Expanded(
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) => ItemCard(),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  // final ProductCard
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 129, 168),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset("images/Black T-Shirt.png"),
        ),
        // Text("Black T-shirt")
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jwellery", "Footwear", "Dresses"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) => buildcategory(index))),
    );
  }

  Widget buildcategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF535353),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 2,
            width: 30,
            color: Colors.black,
          ),
          Body(),
        ],
      ),
    );
  }
}
