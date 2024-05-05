import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Center(
              child: InkWell(
                onTap: (){
                  isSelected = !isSelected;
                  setState(() {
                    
                  });
                },
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                  color:isSelected? Colors.purple: Colors.pink,
                 borderRadius: BorderRadius.circular(isSelected ? 100 :20)
                  ),
                  alignment: isSelected? Alignment.bottomCenter : Alignment.topCenter,
                  curve:Curves.easeInOutBack,
                  height: isSelected ? 500 : 200,
                  width:isSelected ? 300:100,
                  duration: Duration(seconds: 5)),
              ),
            ),
          ),

          // SliverAppBar(
          // //  pinned: true,
          // floating: true,
          //   backgroundColor: Colors.black,
          //   leading: Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //     ),
          //   title: Text("Slivers",
          //   style: TextStyle(color: Colors.white),
          //   ),
          //   centerTitle: true,
          //   actions: [Icon(
          //     Icons.search,
          //     color: Colors.white,
          //     )],
          //   expandedHeight: 400,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.network(
          //       fit:BoxFit.cover,
          //       "https://images.pexels.com/photos/298246/pexels-photo-298246.jpeg?auto=compress&cs=tinysrgb&w=600"),
          //   ),
          // ),

          // red bar after appbar.

          // SliverToBoxAdapter(
          //     child:Container(
          //       height: 100,
          //       color: Colors.red,
          //     ),
          //     ),

          // padding
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            ),

// circle loading at center of body
           SliverFillRemaining(
            child: Center(
            child: CircularProgressIndicator(),
            ),
            ),

            
          // SliverToBoxAdapter(
          //   child: Column(
          //     children: List.generate
          //     (10, (index) => Container(
          //       color: index.isEven? Colors.red : Colors.red.withOpacity(.4),
          //     height: 100,
          //     )),
          //   ),
          // ),

      // in between  appbar()
          //   SliverAppBar(
          //  pinned: true,
          // floating: true,
          //   backgroundColor: Colors.black,
          //   leading: Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //     ),
          //   title: Text("Slivers",
          //   style: TextStyle(color: Colors.white),
          //   ),
          //   centerTitle: true,
          //   actions: [Icon(
          //     Icons.search,
          //     color: Colors.white,
          //     )],
          //   expandedHeight: 400,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.network(
          //       fit:BoxFit.cover,
          //       "https://images.pexels.com/photos/298246/pexels-photo-298246.jpeg?auto=compress&cs=tinysrgb&w=600"),
          //   ),
          // ),

        // SliverToBoxAdapter(
        //   child: Text("Slivers to box adapter"),
        // ),



        //  SliverToBoxAdapter(
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: List.generate
        //         (10, (index) => Container(
        //           width: 100,
        //           color: index.isEven? Colors.red : Colors.red.withOpacity(.4),
        //         height: 100,
        //         )),
        //       ),
        //     ),
         // ),

      //  SliverToBoxAdapter(
      //     child: Text("Slivers list"),
      //      ),

      //   SliverList(
      //     delegate:SliverChildBuilderDelegate(
      //       childCount:3,
      //       (context, index) =>
      //         Container(
      //           width: 100,
      //           color: index.isEven? Colors.red : Colors.red.withOpacity(.4),
      //           height: 100,
      //           ),
      //           ),


      //   // SliverChildListDelegate([
      //   //   Container(width: 100,
      //   //         color:  Colors.yellow.withOpacity(.4),
      //   //         height: 100,
      //   //         ),
      //   //   Container(width: 100,
      //   //         color:  Colors.green.withOpacity(.4),
      //   //         height: 100,
      //   //         ),
      //   // // same thing done using list.generate
      //   //     Container(width: 100,
      //   //         color:  Colors.yellow.withOpacity(.4),
      //   //         height: 100,
      //   //         ),
      //   //   Container(width: 100,
      //   //         color:  Colors.green.withOpacity(.4),
      //   //         height: 100,
      //   //         ),
        
      //   //   ]),
      //   ),

      //   SliverToBoxAdapter(child: Text("silver list builder")),
      //   SliverList.builder(
      //   itemCount:5,
      //   itemBuilder: (context,index)=>Container(
      //     width: 100,
      //     color: index.isEven?Colors.green:Colors.red.withOpacity(.4),
      //     height: 100,
      //   ),
      //   ),
       
      //  SliverToBoxAdapter(child: Text("Sliver fixed extent list")),
      //   SliverFixedExtentList(
      //     delegate:SliverChildBuilderDelegate(
      //       childCount: 5,
      //       (context, index) => Container(
      //         color: index.isEven ? Colors.blue : Colors.blue.withOpacity(.4)
      //       ),
      //       ),
          
      //   itemExtent:50),
      //   SliverToBoxAdapter(child: Text("Sliver grid")),

      //   SliverGrid(
      //     delegate:SliverChildBuilderDelegate(
      //         childCount:9,
      //         (context, index) => Container(
      //         color: index.isEven
      //         ? Colors.orange
      //         :Colors.orange.withOpacity(.4),
      //       ),
      //       ),
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3))
      ],
      ),
    );
  }
}