


import 'package:basketball_cubit/cubit/basket_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class basketball extends StatelessWidget {
  const basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<BasketCubit, BasketState>(


  builder: (context, state) {



    return Scaffold(
      appBar:  AppBar(

        centerTitle: true,
        title: const Text(
          "Point Counter"
          ,style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
        ),
        backgroundColor:Colors.orangeAccent,
        leading: const Icon(Icons.home,color: Colors.black),

        actions: [IconButton(onPressed: (){ Navigator.pop(context);}, icon: const Icon(Icons.sports_baseball,size: 30,color: Colors.red,))],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(

                children:  [
                  const SizedBox(height: 20),
                  const Text("Team A",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

                  Text("${BlocProvider.of<BasketCubit>(context).A}",style: const TextStyle(fontSize: 100,fontWeight: FontWeight.normal)),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){

                        BlocProvider.of<BasketCubit>(context).increase_TeamA(1);

                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 1 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){

                        BlocProvider.of<BasketCubit>(context).increase_TeamA(2);
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 2 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        BlocProvider.of<BasketCubit>(context).increase_TeamA(3);
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 3 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),






                ],


              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
              ),

              Column(

                children:  [
                  const SizedBox(height: 20),
                  const Text("Team B",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

                  Text("${BlocProvider.of<BasketCubit>(context).B}",style: const TextStyle(fontSize: 100,fontWeight: FontWeight.normal)),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        BlocProvider.of<BasketCubit>(context).increase_TeamB(1);
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 1 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        BlocProvider.of<BasketCubit>(context).increase_TeamB(2);
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 2 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        BlocProvider.of<BasketCubit>(context).increase_TeamB(3);
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: const Center(child: Text('Add 3 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),






                ],


              ),




            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: (){
                BlocProvider.of<BasketCubit>(context).rest();

              },
              child: Container(
                color: kcolors,
                width: 140,
                height: 40,
                child: const Center(child: Text('Reset',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
              ),
            ),
          ),

        ],
      ),

    );
  },
);
  }
}

const Color kcolors=Colors.orangeAccent;