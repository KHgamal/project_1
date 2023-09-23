import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/core/common/feature/product/presentation/cubit/get_products_cubit.dart';
import 'package:project_1/core/common/widgets/app_bar.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';
import '../widgets/products_grid_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const route = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  void getProducts(){
    context.read<GetProductsCubit>().getProducts();

  }

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(),
      body: RefreshIndicator(
        onRefresh: ()async{
          getProducts();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S
                          .of(context)
                          .product_title,
                      style: const TextStyle(
                          color: Colours.txtMainColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600

                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,

                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BlocBuilder<GetProductsCubit, GetProductsState>(
                    builder: (context, state) {
                      if(state is ProductsLoaded) {
                        return ShowProductsGridView(products: state.products,);
                      }else if(state is GettingProducts){
                        return const Center(child: CircularProgressIndicator(),);
                      }else if(state is ProductsError){
                        return Center(child: Text(state.error),);
                      }
                      return const SizedBox();
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

