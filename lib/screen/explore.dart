import 'package:flutter/material.dart';
import 'package:wride_app/util/components/custom_explore_app_bar.dart';
import 'package:wride_app/util/components/explore_card.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:  [
          CustomExploreAppBar(),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 10,childAspectRatio: 2/3) , 
              itemCount: 20,
              itemBuilder: (context, index) => ExploreCard(),),
          ))
          // 
          
          // Profile page template .
        ],
      ),
    );
  }
}
